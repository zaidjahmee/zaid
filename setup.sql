-- Run this once in your Supabase project's SQL Editor (Dashboard > SQL Editor > New query)
-- This creates the two tables Ledger needs for cross-device, real-time sync.

create table if not exists ledger_stores (
  id text primary key,
  name text not null,
  updated_at timestamptz not null default now()
);

create table if not exists ledger_days (
  store_id text not null,
  date text not null,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now(),
  primary key (store_id, date)
);

-- Row Level Security: enabled, but with an "allow everything" policy.
-- This is appropriate for a small trusted internal team using a private URL/anon key.
-- It is NOT appropriate if this app or its API key could become publicly reachable,
-- since anyone with the anon key could read/write all data.
-- (If you want real per-employee logins later, replace these policies with ones
-- that check auth.uid() against a permitted-users table, and add Supabase Auth to the app.)

alter table ledger_stores enable row level security;
alter table ledger_days enable row level security;

drop policy if exists "allow all - stores" on ledger_stores;
create policy "allow all - stores" on ledger_stores for all using (true) with check (true);

drop policy if exists "allow all - days" on ledger_days;
create policy "allow all - days" on ledger_days for all using (true) with check (true);

-- Turn on realtime so changes push to every open device instantly.
alter publication supabase_realtime add table ledger_days;
alter publication supabase_realtime add table ledger_stores;
