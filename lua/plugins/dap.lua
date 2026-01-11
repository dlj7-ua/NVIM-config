return function()
    local dap = require('dap')
    local dapui = require('dapui')

    -- Configurar DAP UI
    dapui.setup({
        icons = { expanded = "▾", collapsed = "▸" },
        mappings = {
            open = "o",
            remove = "d",
            edit = "e",
            repl = "r",
            toggle = "t",
        },
        layouts = {
            {
                elements = {
                    "scopes",
                    "breakpoints",
                    "stacks",
                    "watches",
                },
                size = 40,
                position = "left",
            },
            {
                elements = {
                    "repl",
                },
                size = 10,
                position = "bottom",
            },
        },
        controls = {
            enabled = true,
            element = "repl",
            icons = {
                pause = "⏸",
                play = "▶",
                step_into = "⬇",
                step_over = "⬇",
                step_out = "⬆",
                step_back = "b",
                run_last = "▶▶",
                terminate = "⏹",
            },
        },
    })

    -- Listeners para abrir/cerrar UI automáticamente
    dap.listeners.before.attach.dapui_config = function()
        dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
        dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
    end

    -- Configurar CodeLLDB (para Linux/macOS - más confiable)
    dap.adapters.codelldb = {
        type = 'server',
        port = '${port}',
        executable = {
            command = vim.fn.stdpath('data') .. '/mason/bin/codelldb',
            args = { '--port', '${port}' },
        }
    }

    -- Configuración para ejecutables C++
    dap.configurations.cpp = {
        {
            name = 'Launch file',
            type = 'codelldb',
            request = 'launch',
            program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/build/', 'file')
            end,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = {},
            runInTerminal = true,
        },
        {
            name = 'Launch main (build)',
            type = 'codelldb',
            request = 'launch',
            program = '${workspaceFolder}/build/main',
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = {},
            runInTerminal = true,
        },
        {
            name = 'Attach to process',
            type = 'codelldb',
            request = 'attach',
            processId = require('dap.utils').pick_process,
            cwd = '${workspaceFolder}',
        },
    }

    -- Para C y Objective-C
    dap.configurations.c = dap.configurations.cpp
    dap.configurations.objc = dap.configurations.cpp
    dap.configurations.objcpp = dap.configurations.cpp
end
