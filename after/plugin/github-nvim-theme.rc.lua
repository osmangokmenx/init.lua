local status, github = pcall(require, "github-theme")
if (not status) then return end
github.setup()
