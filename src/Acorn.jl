module Acorn

using Gtk


macro abs_str(path :: String) :: String
    return joinpath(@__DIR__, path)
end

const ASSETS_FOLDER = abs"../assets"
const PUBLIC_FOLDER = abs"../public"


function julia_main() :: Cint
    builder = GtkBuilder(filename=(joinpath(@__DIR__, PUBLIC_FOLDER, GLADE_FILE)))
    
    win = builder["window"]
    showall(win)

    return 0
end


end # end of module