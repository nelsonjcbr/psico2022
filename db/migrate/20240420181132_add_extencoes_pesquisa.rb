class AddExtencoesPesquisa < ActiveRecord::Migration[7.0]
  def change
    #enable_extension 'pg_trgm'
    #enable_extension 'fuzzystrmatch'
    #deu erro de permissão, então habilitei pelo psql mesmo, entrando no banco

    ActiveRecord::Base.connection.execute("
    CREATE OR REPLACE FUNCTION soundex_individual_names(full_name TEXT)
    RETURNS TEXT AS $$
    DECLARE
        name_part TEXT;
        soundex_result TEXT := '';
    BEGIN
        FOR name_part IN SELECT regexp_split_to_table(full_name, E'\\s+') LOOP
            name_part := trim(name_part);
            IF name_part <> '' THEN
    --            soundex_result := soundex_result || ' ' || soundex(name_part);
                soundex_result := soundex_result || ' ' || metaphone(name_part,10);
            END IF;
        END LOOP;
        RETURN trim(soundex_result);
    END;
    $$ LANGUAGE plpgsql;
    ")
  end
end
