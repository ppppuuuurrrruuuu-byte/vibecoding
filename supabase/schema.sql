-- Run this in Supabase SQL Editor to create the todos table.

create table if not exists todos (
  id bigint generated always as identity primary key,
  text text not null,
  done boolean not null default false,
  created_at timestamptz not null default now()
);

alter table todos enable row level security;

-- No login system yet, so this app uses the publishable (anon) key for everything.
-- These policies allow anyone with the publishable key to read/write all rows.
-- Fine for a personal single-user todo list; revisit if you add auth or multiple users.
create policy "Allow anon select" on todos
  for select using (true);

create policy "Allow anon insert" on todos
  for insert with check (true);

create policy "Allow anon update" on todos
  for update using (true);

create policy "Allow anon delete" on todos
  for delete using (true);
