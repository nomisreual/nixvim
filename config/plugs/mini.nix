{
  plugins.mini = {
    enable = true;
    modules = {
      ai = {
        # Better Around/Inside textobjects
        #
        # Examples:
        #  - va)  - [V]isually select [A]round [)]paren
        #  - yinq - [Y]ank [I]nside [N]ext [Q]uote
        #  - ci'  - [C]hange [I]nside [']quote
        n_lines = 500;
      };
      # not working
      surround = {
        # Add/delete/replace surroundings (brackets, quotes, etc.)
        #
        # saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
        # - sd'   - [S]urround [D]elete [']quotes
        # - sr)'  - [S]urround [R]eplace [)] [']
      };
      # starter = {
      #   header = ''
      #
      #                                                  
      #           ████ ██████           █████      ██
      #          ███████████             █████ 
      #          █████████ ███████████████████ ███   ███████████
      #         █████████  ███    █████████████ █████ ██████████████
      #        █████████ ██████████ █████████ █████ █████ ████ █████
      #      ███████████ ███    ███ █████████ █████ █████ ████ █████
      #     ██████  █████████████████████ ████ █████ █████ ████ ██████
      #
      #   '';
      # };
    };
  };
}
