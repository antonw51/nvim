Vim�UnDo� �ҁjl�_<�����g+
*�a�*1ǹ\�S6w   %       &          $       $   $   $    fbEc   
 _�                     !       ����                                                                                                                                                                                                                                                                                                                                                             fbD     �   !               �   !            5��    !                      z                     �    !                      z                     �    "                      {                     �    "                                        �    "   
                 �                     �    #                     �                     �    #                    �                     �    $                      �                     �    #                     �                     �    #                     �                    �    #                    �                    5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             fbD%     �   #              vim.keymap.set)_5��    #                     �                     �    #                    �                    5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             fbD&     �   #              vim.keymap.set()5��    #                     �                     5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             fbD'     �   #              vim.keymap.set('')5��    #                     �                     5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             fbD'     �   #              vim.keymap.set('n')5��    #                     �                     5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             fbD(     �   #              vim.keymap.set('n', '')5��    #                     �                     5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             fbD)     �   #              vim.keymap.set('n', '<>')5��    #                     �                     5�_�      	              $       ����                                                                                                                                                                                                                                                                                                                                                             fbD/     �   #              vim.keymap.set('n', '<leader>')5��    #                     �                     5�_�      
           	   $       ����                                                                                                                                                                                                                                                                                                                                                             fbD2     �   #              !vim.keymap.set('n', '<leader>e;')5��    #                    �                    5�_�   	              
   #   	    ����                                                                                                                                                                                                                                                                                                                                                             fbD2     �   #   %   %      -- �   #   %   $    5��    #                      �                     �    #                     �                     �    #                    �                    5�_�   
                 %        ����                                                                                                                                                                                                                                                                                                                                                             fbD8     �   $              !vim.keymap.set('n', '<leader>el')5��    $                      �                     5�_�                    %   #    ����                                                                                                                                                                                                                                                                                                                                                             fbD9     �   $              %vim.keymap.set('n', '<leader>el', '')5��    $   #                  �                     5�_�                    %   >    ����                                                                                                                                                                                                                                                                                                                                                             fbD?     �   $              Avim.keymap.set('n', '<leader>el', ':Trouble diagnostic toggle<>')5��    $   >                  �                     5�_�                    %   @    ����                                                                                                                                                                                                                                                                                                                                                             fbD@     �   $              Cvim.keymap.set('n', '<leader>el', ':Trouble diagnostic toggle<CR>')5��    $   ?                 �                    5�_�                    %   @    ����                                                                                                                                                                                                                                                                                                                                                             fbDA     �   $              Cvim.keymap.set('n', '<leader>el', ':Trouble diagnostic toggle<Cr>')5��    $   ?                 �                    5�_�                    %   .    ����                                                                                                                                                                                                                                                                                                                                                             fbDC    �   %               �               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Cvim.keymap.set('n', '<leader>el', ':Trouble diagnostic toggle<CR>')5��            $   C   %               �      �      �    %                      �                     5�_�                    %        ����                                                                                                                                                                                                                                                                                                                                                             fbDC    �   %               �               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()   	vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   (	vim.keymap.set('n', '<F11>', function()   9		vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen   	end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Cvim.keymap.set('n', '<leader>el', ':Trouble diagnostic toggle<CR>')�               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Cvim.keymap.set('n', '<leader>el', ':Trouble diagnostic toggle<CR>')5��            %       %               �      �      �            $   C   %               �      �      �    %                      �                     5�_�                    %   6    ����                                                                                                                                                                                                                                                                                                                                                             fbDS     �   $              Cvim.keymap.set('n', '<leader>el', ':Trouble diagnostic toggle<CR>')5��    $   6                  �                     5�_�                    %   >    ����                                                                                                                                                                                                                                                                                                                                                             fbD�     �   $              Dvim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle<CR>')5��    $   >                  �                     5�_�      !              %   H    ����                                                                                                                                                                                                                                                                                                                                                             fbD�    �   %               �               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Ovim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')5��            $   O   %               �      �      �    %                      �                     5�_�      "          !   %        ����                                                                                                                                                                                                                                                                                                                               ,          ,       v   ,    fbEY    �   %               �               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Ovim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')5��            $   O   %               �      �      �    %                      �                     5�_�   !   #           "   %        ����                                                                                                                                                                                                                                                                                                                               ,          ,       v   ,    fbE[    �   %               �               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()   	vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   (	vim.keymap.set('n', '<F11>', function()   9		vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen   	end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Ovim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')�               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Ovim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')5��            %       %               �      �      �            $   O   %               �      �      �    %                      �                     5�_�   "   $           #   %        ����                                                                                                                                                                                                                                                                                                                               ,          ,       v   ,    fbEb   	 �   %               �               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Ovim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')5��            $   O   %               �      �      �    %                      �                     5�_�   #               $   %        ����                                                                                                                                                                                                                                                                                                                               ,          ,       v   ,    fbEb   
 �   %               �               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()   	vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   (	vim.keymap.set('n', '<F11>', function()   9		vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen   	end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Ovim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')�               %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Ovim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')5��            %       %               �      �      �            $   O   %               �      �      �    %                      �                     5�_�             !      %        ����                                                                                                                                                                                                                                                                                                                                                             fbD�    �       &       %   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()   	vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   (	vim.keymap.set('n', '<F11>', function()   9		vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen   	end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Ovim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')�       &       &   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   Ovim.keymap.set('n', '<leader>el', ':Trouble diagnostics toggle focus=true<CR>')    �   %   '        5��            %       %               �      �      �            $   O   %               �      �      �    %                      �                     5�_�                    %   "    ����                                                                                                                                                                                                                                                                                                                                                             fbD�     �   $   &          ,vim.keymap.set('n', '<leader>el', function()   1    ':Trouble diagnostics toggle focus=true<CR>')5��    $   "               
   �              
       �    $   ,                  �                     �    %                      �                     5�_�                    &   0    ����                                                                                                                                                                                                                                                                                                                                                             fbD�     �   %   '          0    ':Trouble diagnostics toggle focus=true<CR>'   end())5��    %   0                 �                     �    &                     �                     �    &                     �                    5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                             fbD�     �   &   (          end))5��    &                     �                     5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                             fbD�     �   &   (          end)5��    &                     �                     5�_�                    '        ����                                                                                                                                                                                                                                                                                                                                                             fbD�     �   &   (              end)5��    &                      �                     5�_�                    &       ����                                                                                                                                                                                                                                                                                                                                                             fbD�     �   %   '   (      8    vim.cmd(':Trouble diagnostics toggle focus=true<CR>'5��    %                     �                     5�_�                    &   8    ����                                                                                                                                                                                                                                                                                                                            %   ,       %   ,       v   ,    fbD�     �   %   '   (      9    vim.cmd(':Trouble diagnostics toggle focus=true<CR>')5��    %   8                  �                     5�_�                    %   +    ����                                                                                                                                                                                                                                                                                                                               ,          ,       v   ,    fbD�    �       )       (   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   ,vim.keymap.set('n', '<leader>el', function()   9    vim.cmd(':Trouble diagnostics toggle focus=true<CR>')   end)    �   '   )        5��            '      '                           �    '                                           5�_�                    %   +    ����                                                                                                                                                                                                                                                                                                                               ,          ,       v   ,    fbD�    �       (       '   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()   	vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   (	vim.keymap.set('n', '<F11>', function()   9		vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen   	end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   ,vim.keymap.set('n', '<leader>el', function()   6	vim.cmd(':Trouble diagnostics toggle focus=true<CR>')   end)�       (       (   2vim.keymap.set('i', '<M-Up>', '<ESC>:move-2<CR>i')   3vim.keymap.set('i', '<M-Down>', '<ESC>:move+<CR>i')       (vim.keymap.set('n', '<C-Up>', '<C-u>zz')   *vim.keymap.set('n', '<C-Down>', '<C-d>zz')        -- yank to clipboard with leader   'vim.keymap.set('n', '<leader>y', '"+y')   'vim.keymap.set('v', '<leader>y', '"+y')       !vim.keymap.set('n', 'Q', '<nop>')       -- terminal   2vim.keymap.set('n', '<leader>t', ':terminal <CR>')   +vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')       -- nice additions   ,vim.keymap.set('n', '<leader>er', function()       vim.diagnostic.open_float()   end)   8vim.keymap.set('n', '<leader>ca', ':CodeActionMenu<CR>')   0vim.keymap.set('n', '<leader>cn', ':IncRename ')       &vim.keymap.set('n', '<leader>i', 'cc')       if vim.g.neovide then   +    vim.keymap.set('n', '<F11>', function()   ?        vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen       end)   end       -- Oil   -vim.keymap.set('n', '<leader>ex', ':Oil<CR>')       
-- Trouble   -- el = error list   ,vim.keymap.set('n', '<leader>el', function()   9    vim.cmd(':Trouble diagnostics toggle focus=true<CR>')   end)    �   '   )        5��            '       '                     �      �            &      '               �            �    '                                           5�_�                     %   +    ����                                                                                                                                                                                                                                                                                                                               ,          ,       v   ,    fbD�     �   %   &   '          �   %   '   (          vim.keymap.set()5��    %                      �                     �    %                      �                     �    %                    �                    �    %   	                  �                     �    %                 
   �             
       �    %                     �                     �    %                     �                     �    %                    �                    5�_�                      &       ����                                                                                                                                                                                                                                                                                                                               ,          ,       v   ,    fbES     �   %   '        5��    %                      �                     5��