// Public-safe config only: URL + publishable key are meant to be exposed to the browser.
// Never put SUPABASE_SECRET_KEY here — it belongs only in .env for server-side/backend use.
const SUPABASE_URL = 'https://khakebokbpccdnriaxde.supabase.co';
const SUPABASE_PUBLISHABLE_KEY = 'sb_publishable_Hs6Xp-Zr7dotxWG40M1yTw_6lnI0PKC';

window.supabaseClient = supabase.createClient(SUPABASE_URL, SUPABASE_PUBLISHABLE_KEY);
