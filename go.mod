import { createClient } from '@supabase/supabase-js';

// Acesse as variáveis de ambiente corretamente
const supabaseUrl = process.env.https://vwavaxkqzpzbaehfchgx.supabase.co; // Defina como 'SUPABASE_URL' no Render
const supabaseAnonKey = process.env.process.env.eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ3YXZheGtxenB6YmFlaGZjaGd4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjkyOTU2NjgsImV4cCI6MjA0NDg3MTY2OH0.ORoBUlUmFNcZ_Gygy3gqYar09TL6K6MViT2_25wzgOE;; // Defina como 'SUPABASE_ANON_KEY' no Render

const supabase = createClient(supabaseUrl, supabaseAnonKey);

// Exemplo de uso
async function fetchData() {
    const { data, error } = await supabase.from('sua_tabela').select('*');
    if (error) {
        console.error(error);
    } else {
        console.log(data);
    }
}

fetchData();
