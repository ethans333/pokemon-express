import { pool } from "../api/db.ts";
import * as fs from "fs";
import * as readline from "readline";
import type { Pokemon } from "../types/Pokemon.ts";

const CSV_PATH = "./pokemon.csv";

async function parsePokemonCsv(): Promise<Array<Pokemon>> {
  const f = fs.createReadStream(CSV_PATH);

  const pokemon: Array<Pokemon> = [];

  const rl = readline.createInterface({
    input: f,
    crlfDelay: Infinity,
  });

  let l = 0;

  for await (const line of rl) {
    if (l == 0) {
      l++;
      continue;
    }

    const data = line.split(",").map((s) => (s == "" ? null : s));

    const parseIntOrNull = (str: string | null) =>
      str && !isNaN(parseInt(str)) ? parseInt(str) : null;

    pokemon.push({
      id: l++,
      name: data[1],
      type1: data[2],
      type2: data[3],
      total: parseIntOrNull(data[4]),
      hp: parseIntOrNull(data[5]),
      attack: parseIntOrNull(data[6]),
      defense: parseIntOrNull(data[7]),
      speed: parseIntOrNull(data[10]),
      generation: parseIntOrNull(data[11]),
      legendary: Boolean(data[12]),
    });
  }

  return pokemon;
}

async function importData() {
  const pokemon = await parsePokemonCsv();

  for (const p of pokemon) {
    const result = await pool.query(
      `INSERT INTO pokemon 
     (id, name, type1, type2, total, hp, defense, attack, speed, generation, legendary)
     VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)`,
      [
        p.id,
        p.name,
        p.type1,
        p.type2,
        p.total,
        p.hp,
        p.defense,
        p.attack,
        p.speed,
        p.generation,
        p.legendary,
      ]
    );
  }
}

importData();
