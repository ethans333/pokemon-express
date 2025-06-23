import { Pool } from "pg";

export const pool = new Pool({
  user: "postgres",
  host: "db-service",
  database: "pokemondb",
  password: "password",
  port: 5432,
});
