return {
  {
    "groovyghoul/sqeletor.nvim",
    -- enabled = false,
    lazy = false,
    branch = "main",
    keys = {
      {
        "<leader>sq",
        function()
          require("sqeletor").new_script()
        end,
        desc = "Fire up SQeLetor for script",
      },
      {
        "<leader>sp",
        function()
          require("sqeletor").new_procedure()
        end,
        desc = "Fire up SQeLetor for procedure",
      },
    },
    -- opts = {
    --   defaults = {
    --     value = "AIS8.sln",
    --   },
    -- },
  },
}
