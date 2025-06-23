import express from "express";

import { pool } from "./db.ts";
import type { Pokemon } from "./types/Pokemon.ts";

const app = express();
const port = 3000;

app.use(express.json());

// Get information
app.get("/info", async (req, res) => {
  try {
    res.status(200).send("This a Pokemon API project created by @ethans333.");
  } catch (error) {
    res.status(500).send(error);
  }
});

// Get all pokemon
app.get("/pokemon", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM pokemon");
    const pokemon: Array<Pokemon> = result.rows;

    res.status(200).json({
      pokemon: pokemon,
    });
  } catch (error) {
    res.status(500).send(error);
  }
});

// Search pokemon by name
app.get("/pokemon/search", async (req, res) => {
  try {
    const name = req.query.name;

    const result = await pool.query(
      "SELECT * FROM pokemon WHERE LOWER(name) LIKE LOWER($1)",
      [`%${name}%`]
    );

    res.json({
      pokemon: result.rows,
    });
  } catch (error) {
    res.status(500).send(error);
  }
});

// Get pokemon by id
app.get("/pokemon/:id", async (req, res) => {
  try {
    const id = req.params.id;
    const result = await pool.query("SELECT * FROM pokemon WHERE id = $1", [
      id,
    ]);

    if (result.rows.length == 0) {
      res.status(404).json("Pokemon not found.");
    }

    res.json({
      pokemon: result.rows[0],
    });
  } catch (error) {
    res.status(500).send(error);
  }
});

app.listen(port, () => {
  console.log(`Running server on port ${port}`);
});
