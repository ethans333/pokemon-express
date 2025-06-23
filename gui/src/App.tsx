import { ThemeProvider } from "@/components/theme-provider";
import PokemonTable from "./components/PokemonTable";
import AppTitle from "./components/AppTitle";

function App() {
  return (
    <ThemeProvider defaultTheme="dark" storageKey="vite-ui-theme">
      <div className="w-full lg:w-[1024px] mt-16 mx-auto">
        <AppTitle />
        <PokemonTable />
      </div>
    </ThemeProvider>
  );
}

export default App;
