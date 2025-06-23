import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input.tsx";
import { SearchIcon, ChevronLeft, ChevronRight, FrownIcon } from "lucide-react";
import { useEffect, useState } from "react";

const maxPokemon = 800;
const pokemonPerPage = 10;

class Pokemon {
  id: string | null;
  name: string | null;
  type1: string | null;
  type2: string | null;
  total: number | null;
  hp: number | null;
  defense: number | null;
  speed: number | null;
  generation: number | null;
  legendary: boolean | null;
  attack: string | null;

  constructor(data: any) {
    this.id = data.id;
    this.name = data.name;
    this.type1 = data.type1;
    this.type2 = data.type2;
    this.total = data.total;
    this.hp = data.hp;
    this.defense = data.defense;
    this.speed = data.speed;
    this.generation = data.generation;
    this.legendary = data.legendary;
    this.attack = data.attack;
  }
}

async function fetchPokemon(page: number): Promise<Array<Pokemon>> {
  const url = `http://3.87.73.87:3000/pokemon?page=${page}`;

  const response = await fetch(url);
  const data = await response.json();

  const pokemon = [];

  for (const p of data.pokemon) {
    pokemon.push(new Pokemon(p));
  }

  return pokemon;
}

async function fetchSearchPokemon(query: string): Promise<Array<Pokemon>> {
  const url = `http://3.87.73.87:3000/pokemon/search?name=${query}`;

  const response = await fetch(url);
  const data = await response.json();

  const pokemon = [];

  for (const p of data.pokemon) {
    pokemon.push(new Pokemon(p));
  }

  return pokemon;
}

export default function PokemonTable() {
  const [pokemon, setPokemon] = useState<Array<Pokemon>>([]);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [page, setPage] = useState<number>(0);

  useEffect(() => {
    (async () => {
      setIsLoading(true);
      setPokemon(await fetchPokemon(page));
      setIsLoading(false);
    })();
  }, []);

  async function searchPokemon(search: any) {
    let data;

    setIsLoading(true);

    if (search == "") {
      setPage(0);
      data = await fetchPokemon(0);
    } else {
      data = await fetchSearchPokemon(search);
      setPage(-1);
    }

    setPokemon(data);
    setIsLoading(false);
  }

  function PageSelector({ onLeft, onRight }: { onLeft: any; onRight: any }) {
    return (
      <div className="flex gap-2 opacity-75">
        <ChevronLeft
          size={20}
          className="cursor-pointer hover:opacity-50"
          onClick={onLeft}
        />
        <p className="text-sm">
          {page * pokemonPerPage + 1}-{(page + 1) * pokemonPerPage} of{" "}
          {maxPokemon} Pokemon
        </p>
        <ChevronRight
          size={20}
          className="cursor-pointer hover:opacity-50"
          onClick={onRight}
        />
      </div>
    );
  }

  async function nextPage() {
    const newPage = Math.min(maxPokemon / pokemonPerPage, page);
    const newData = await fetchPokemon(newPage);
    setPage(newPage);
    setIsLoading(true);
    setPokemon(newData);
    setIsLoading(false);
  }

  async function prevPage() {
    const newPage = Math.max(0, page - 1);
    const newData = await fetchPokemon(newPage);
    setPage(newPage);
    setIsLoading(true);
    setPokemon(newData);
    setIsLoading(false);
  }

  return (
    <div>
      <div className="flex justify-end mb-3">
        <SearchBox onSubmit={searchPokemon} />
      </div>

      {isLoading ? (
        <div className="flex items-center justify-center py-24">
          <LoadingWheel />
        </div>
      ) : (
        <div>
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead className="w-[100px]">Id</TableHead>
                <TableHead>Name</TableHead>
                <TableHead>Type 1</TableHead>
                <TableHead>Type 2</TableHead>
                <TableHead>Total</TableHead>
                <TableHead>❤️ HP</TableHead>
                <TableHead>💥 Attack</TableHead>
                <TableHead>🛡️ Defense</TableHead>
                <TableHead>💨 Speed</TableHead>
                <TableHead>⬆️ Generation</TableHead>
                <TableHead>🌟 Legendary</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {pokemon.map((p) => (
                <TableRow key={p.id}>
                  <TableCell className="opacity-70 italic">{p.id}</TableCell>
                  <TableCell className="capitalize max-w-[100px] truncate">
                    {p.name}
                  </TableCell>
                  <TableCell>
                    <TypeLabel type={p.type1} />
                  </TableCell>
                  <TableCell>
                    <TypeLabel type={p.type2} />
                  </TableCell>
                  <TableCell className="opacity-70">
                    {String(p.total)}
                  </TableCell>
                  <TableCell className="opacity-70">{String(p.hp)}</TableCell>
                  <TableCell className="opacity-70">
                    {String(p.attack)}
                  </TableCell>
                  <TableCell className="opacity-70">
                    {String(p.defense)}
                  </TableCell>
                  <TableCell className="opacity-70">
                    {String(p.speed)}
                  </TableCell>
                  <TableCell className="opacity-70">
                    {String(p.generation)}
                  </TableCell>
                  <TableCell className="capitalize">
                    {String(p.legendary)}
                  </TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
          <div className="w-full mt-4">
            <div
              className={`flex justify-center ${
                pokemon.length != 0 && "hidden"
              }`}
            >
              <NoPokemonLabel />
            </div>
            <div className={`flex justify-end pt-4 ${page < 0 && "hidden"}`}>
              <PageSelector onLeft={prevPage} onRight={nextPage} />
            </div>
          </div>
        </div>
      )}
    </div>
  );
}

function NoPokemonLabel() {
  return (
    <div className="py-10 flex gap-3 text-rose-500">
      <FrownIcon />
      <p className="font-semibold">No Pokemon Found</p>
    </div>
  );
}

function TypeLabel({ type }: { type: string | null }) {
  switch (type?.toLowerCase()) {
    case "grass":
      return <p className="text-green-400">{type}</p>;
    case "fire":
      return <p className="text-orange-500">{type}</p>;
    case "water":
      return <p className="text-blue-400">{type}</p>;
    case "poison":
      return <p className="text-purple-500">{type}</p>;
    case "electric":
      return <p className="text-yellow-400">{type}</p>;
    case "ground":
      return <p className="text-orange-300">{type}</p>;
    case "flying":
      return <p className="text-blue-200">{type}</p>;
    case "psychic":
      return <p className="text-purple-800">{type}</p>;
    case "rock":
      return <p className="text-gray-600">{type}</p>;
    case "steel":
      return <p className="text-gray-400">{type}</p>;
    case "bug":
      return <p className="text-emerald-400">{type}</p>;
    case "dragon":
      return <p className="text-red-700">{type}</p>;
    case "fairy":
      return <p className="text-indigo-400">{type}</p>;
    case "ice":
      return <p className="text-blue-200">{type}</p>;
    case "dark":
      return <p className="text-purple-900">{type}</p>;
    case "fighting":
      return <p className="text-orange-400">{type}</p>;
    case "ghost":
      return <p className="text-gray-300">{type}</p>;
    default:
      return <p className="text-white">{type}</p>;
  }
}

function SearchBox({ onSubmit }: { onSubmit: (query: string) => void }) {
  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const formData = new FormData(e.currentTarget);
    const query = formData.get("search") as string;
    onSubmit(query);
  };

  return (
    <form
      onSubmit={handleSubmit}
      className="flex w-full max-w-xs items-center gap-2"
    >
      <Input name="search" type="text" placeholder="Search" />
      <Button type="submit" variant="outline" className="cursor-pointer">
        <SearchIcon />
      </Button>
    </form>
  );
}

function LoadingWheel() {
  return (
    <div role="status">
      <svg
        aria-hidden="true"
        className="w-6 h-6 text-gray-200 animate-spin dark:text-gray-600 fill-[#debf3e]"
        viewBox="0 0 100 101"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
          fill="currentColor"
        />
        <path
          d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
          fill="currentFill"
        />
      </svg>
      <span className="sr-only">Loading...</span>
    </div>
  );
}
