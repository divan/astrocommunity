return {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
    debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
    disable_extra_info = "yes", -- Disable extra information (e.g: system prompt) in the response.
    language = "English", -- Copilot answer language settings when using default prompts. Default language is English.
    prompts = {
      Explain = "Explain how it works.",
      Review = "Review the following code and provide concise suggestions.",
      Tests = "Briefly explain how the selected code works, then generate unit tests.",
      Refactor = "Refactor the code to improve clarity and readability.",
    },
  },
  build = function()
    vim.notify "Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim."
  end,
  event = "User AstroFile",
  keys = {
    { "<leader>ccb", ":CopilotChatBuffer ", desc = "CopilotChat - Chat with current buffer" },
    { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
    { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
    {
      "<leader>ccT",
      "<cmd>CopilotChatVsplitToggle<cr>",
      desc = "CopilotChat - Toggle Vsplit", -- Toggle vertical split
    },
    {
      "<leader>ccv",
      ":CopilotChatVisual ",
      mode = "x",
      desc = "CopilotChat - Open in vertical split",
    },
    {
      "<leader>ccx",
      ":CopilotChatInPlace<cr>",
      mode = "x",
      desc = "CopilotChat - Run in-place code",
    },
    {
      "<leader>ccf",
      "<cmd>CopilotChatFixDiagnostic<cr>", -- Get a fix for the diagnostic message under the cursor.
      desc = "CopilotChat - Fix diagnostic",
    },
    {
      "<leader>ccr",
      "<cmd>CopilotChatReset<cr>", -- Reset chat history and clear buffer.
      desc = "CopilotChat - Reset chat history and clear buffer",
    },
  },
}
