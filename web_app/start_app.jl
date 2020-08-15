using Genie
import Genie.Router: route

Genie.config.run_as_server = true

route("/") do
    "Hello - Welcome to Genie!"
end

Genie.AppServer.startup(8000, "0.0.0.0")
