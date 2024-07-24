return -- add tsserver and setup with typescript.nvim instead of lspconfig
{
  "neovim/nvim-lspconfig",
  dependencies = {
    "jose-elias-alvarez/typescript.nvim",
    init = function()
      require("lazyvim.util").lsp.on_attach(function(_, buffer)
          -- stylua: ignore
          vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
        vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
      end)
    end,
  },
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- tsserver will be automatically installed with mason and loaded with lspconfig
      tsserver = {},
    },
    -- you can do any additional lsp server setup here
    -- return true if you don't want this server to be setup with lspconfig
    ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
    setup = {
      -- example to setup with typescript.nvim
      tsserver = function(_, opts)
        require("typescript").setup({ server = opts })
        return true
      end,
      -- Specify * to use this function as a fallback for any server
      -- ["*"] = function(server, opts) end,
    },
  },

  config = {
    volar = {
      on_attach = function(client, _)
        client.server_capabilities = utils.extend_tbl(client.server_capabilities, {
          workspace = {
            didChangeWatchedFiles = {
              dynamicRegistration = true,
            },
          },
        })
      end,
      init_options = {
        vue = {
          hybridMode = true,
        },
      },
      settings = {
        vue = {
          updateImportOnFileMove = { enabled = true },
        },
      },
    },
    vtsls = {
      on_attach = function(client, _)
        client.server_capabilities = utils.extend_tbl(client.server_capabilities, {
          workspace = {
            didChangeWatchedFiles = {
              dynamicRegistration = true,
            },
            fileOperations = {
              didRename = {
                filters = {
                  {
                    pattern = {
                      glob = "**/*.{ts,cts,mts,tsx,js,cjs,mjs,jsx,vue}",
                    },
                  },
                },
              },
            },
          },
        })
      end,
      filtypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "javascript.jsx",
        "typescript.tsx",
        "vue",
      },
      settings = {
        complete_function_calls = true,
        vtsls = {
          tsserver = { globalPlugins = {} },
          enableMoveToFileCodeAction = true,
          autoUseWorkspaceTsdk = true,
          experimental = {
            completion = {
              enableServerSideFuzzyMatch = true,
            },
          },
        },
        typescript = {
          updateImportsOnFileMove = { enabled = "always" },
          suggest = {
            completeFunctionCalls = true,
          },
          inlayHints = {
            parameterNames = {
              enabled = "literals",
            },
            parameterTypes = {
              enabled = false,
            },
            variableTypes = { enabled = false },
            propertyDeclarationTypes = { enabled = true },
            functionLikeReturnTypes = { enabled = false },
            enumMemberValues = { enabled = true },
          },
        },
        javascript = {
          updateImportsOnFileMove = { enabled = "always" },
          inlayHints = {
            parameterNames = {
              enabled = "literals",
            },
            parameterTypes = {
              enabled = false,
            },
            variableTypes = { enabled = false },
            propertyDeclarationTypes = { enabled = true },
            functionLikeReturnTypes = { enabled = false },
            enumMemberValues = { enabled = true },
          },
        },
      },
      before_init = function(_, config)
        local astrocore_ok, astrocore = pcall(require, "astrocore")
        local registry_ok, registry = pcall(require, "mason-registry")
        if not astrocore_ok or not registry_ok then
          return
        end
        local volar_install_path = registry.get_package_install_path("vue-language-server"):get_install_path()
          .. "/node_modules/@vue/language-server"

        local vue_plugin_config = {
          name = "@vue/typescript-plugin",
          location = volar_install_path,
          languages = { "vue" },
          configNamespace = "typescript",
          enableForWorkspaceTypeScriptVersions = true,
        }

        astrocore.list_insert_unique(config.settings.vtsls.tsserver.globalPlugins, {
          vue_plugin_config,
        })
      end,
    },
  },
}
