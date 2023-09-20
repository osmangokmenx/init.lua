local status, swagger = pcall(require, "swagger-preview")
if (not status) then return end

swagger.setup({
    port = 8000,
    host = "localhost",
})
