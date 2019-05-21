all: bootstrap indent-php-install indent-python-install omnicomplete-php-install omnicomplete-css-install plugin-airline-install plugin-airline-themes-install plugin-css-color-install plugin-delimitmate-install plugin-deoplete-install plugin-deoplete-go-install plugin-deoplete-jedi-install plugin-editorconfig-install plugin-fugitive-install plugin-golang-install plugin-golden-ratio-install plugin-gui-shim-install plugin-javascript-install plugin-rainbow-csv-install plugin-rainbow-paren-install plugin-rust-install plugin-vawa-install plugin-vimcompletesme-install plugin-vinegar-install syntax-css-install syntax-dockerfile-install syntax-html5-install syntax-javascript-libraries-install syntax-php-install theme-broduo-install theme-buddy-install theme-vividchalk-install theme-base16-install
	@echo BEGIN | sed 's/.*/all: &/'
	@echo END | sed 's/.*/all: &/'

bootstrap: pathogen-install .vimrc
	@echo BEGIN | sed 's/.*/bootstrap: &/'
	@echo END | sed 's/.*/bootstrap: &/'

pathogen-clean: indent-php-clean indent-python-clean omnicomplete-php-clean omnicomplete-css-clean plugin-airline-clean plugin-airline-themes-clean plugin-css-color-clean plugin-delimitmate-clean plugin-deoplete-clean plugin-deoplete-go-clean plugin-deoplete-jedi-clean plugin-editorconfig-clean plugin-fugitive-clean plugin-golang-clean plugin-golden-ratio-clean plugin-gui-shim-clean plugin-javascript-clean plugin-rainbow-csv-clean plugin-rainbow-paren-clean plugin-rust-clean plugin-vawa-clean plugin-vimcompletesme-clean plugin-vinegar-clean syntax-css-clean syntax-dockerfile-clean syntax-html5-clean syntax-javascript-libraries-clean syntax-php-clean theme-broduo-clean theme-buddy-clean theme-vividchalk-clean theme-base16-clean
	@echo BEGIN | sed 's/.*/pathogen-clean: &/'
	@if [ -d /Users/jeffrey04/.config/nvim/.hg ]; then hg update -y null -R /Users/jeffrey04/.config/nvim && rm -rf /Users/jeffrey04/.config/nvim/.hg; fi | sed 's/.*/pathogen-clean: &/'
	@rm -rf /Users/jeffrey04/.config/nvim/bundle | sed 's/.*/pathogen-clean: &/'
	@echo END | sed 's/.*/pathogen-clean: &/'

pathogen-install: pathogen-clean .vim
	@echo BEGIN | sed 's/.*/pathogen-install: &/'
	@hg clone -y git://github.com/tpope/vim-pathogen.git /Users/jeffrey04/.config/nvim | sed 's/.*/pathogen-install: &/'
	@ln -s /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles /Users/jeffrey04/.config/nvim/bundle | sed 's/.*/pathogen-install: &/'
	@echo END | sed 's/.*/pathogen-install: &/'

pathogen-update: 
	@echo BEGIN | sed 's/.*/pathogen-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/.config/nvim | sed 's/.*/pathogen-update: &/'
	@echo END | sed 's/.*/pathogen-update: &/'

indent-php-clean: 
	@echo BEGIN | sed 's/.*/indent-php-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/indent-php | sed 's/.*/indent-php-clean: &/'
	@echo END | sed 's/.*/indent-php-clean: &/'

indent-php-install: indent-php-clean
	@echo BEGIN | sed 's/.*/indent-php-install: &/'
	@hg clone -y git://github.com/2072/PHP-Indenting-for-VIm.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/indent-php | sed 's/.*/indent-php-install: &/'
	@echo END | sed 's/.*/indent-php-install: &/'

indent-php-update: 
	@echo BEGIN | sed 's/.*/indent-php-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/indent-php | sed 's/.*/indent-php-update: &/'
	@echo END | sed 's/.*/indent-php-update: &/'

indent-python-clean: 
	@echo BEGIN | sed 's/.*/indent-python-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/indent-python | sed 's/.*/indent-python-clean: &/'
	@echo END | sed 's/.*/indent-python-clean: &/'

indent-python-install: indent-python-clean
	@echo BEGIN | sed 's/.*/indent-python-install: &/'
	@hg clone -y git://github.com/hynek/vim-python-pep8-indent.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/indent-python | sed 's/.*/indent-python-install: &/'
	@echo END | sed 's/.*/indent-python-install: &/'

indent-python-update: 
	@echo BEGIN | sed 's/.*/indent-python-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/indent-python | sed 's/.*/indent-python-update: &/'
	@echo END | sed 's/.*/indent-python-update: &/'

omnicomplete-php-clean: 
	@echo BEGIN | sed 's/.*/omnicomplete-php-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/omnicomplete-php | sed 's/.*/omnicomplete-php-clean: &/'
	@echo END | sed 's/.*/omnicomplete-php-clean: &/'

omnicomplete-php-install: omnicomplete-php-clean
	@echo BEGIN | sed 's/.*/omnicomplete-php-install: &/'
	@hg clone -y git://github.com/shawncplus/phpcomplete.vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/omnicomplete-php | sed 's/.*/omnicomplete-php-install: &/'
	@echo END | sed 's/.*/omnicomplete-php-install: &/'

omnicomplete-php-update: 
	@echo BEGIN | sed 's/.*/omnicomplete-php-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/omnicomplete-php | sed 's/.*/omnicomplete-php-update: &/'
	@echo END | sed 's/.*/omnicomplete-php-update: &/'

omnicomplete-css-clean: 
	@echo BEGIN | sed 's/.*/omnicomplete-css-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/omnicomplete-css | sed 's/.*/omnicomplete-css-clean: &/'
	@echo END | sed 's/.*/omnicomplete-css-clean: &/'

omnicomplete-css-install: omnicomplete-css-clean
	@echo BEGIN | sed 's/.*/omnicomplete-css-install: &/'
	@hg clone -y git://github.com/othree/csscomplete.vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/omnicomplete-css | sed 's/.*/omnicomplete-css-install: &/'
	@echo END | sed 's/.*/omnicomplete-css-install: &/'

omnicomplete-css-update: 
	@echo BEGIN | sed 's/.*/omnicomplete-css-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/omnicomplete-css | sed 's/.*/omnicomplete-css-update: &/'
	@echo END | sed 's/.*/omnicomplete-css-update: &/'

plugin-airline-clean: 
	@echo BEGIN | sed 's/.*/plugin-airline-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-airline | sed 's/.*/plugin-airline-clean: &/'
	@echo END | sed 's/.*/plugin-airline-clean: &/'

plugin-airline-install: plugin-airline-clean
	@echo BEGIN | sed 's/.*/plugin-airline-install: &/'
	@hg clone -y git://github.com/vim-airline/vim-airline.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-airline | sed 's/.*/plugin-airline-install: &/'
	@echo END | sed 's/.*/plugin-airline-install: &/'

plugin-airline-update: 
	@echo BEGIN | sed 's/.*/plugin-airline-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-airline | sed 's/.*/plugin-airline-update: &/'
	@echo END | sed 's/.*/plugin-airline-update: &/'

plugin-airline-themes-clean: 
	@echo BEGIN | sed 's/.*/plugin-airline-themes-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-airline-themes | sed 's/.*/plugin-airline-themes-clean: &/'
	@echo END | sed 's/.*/plugin-airline-themes-clean: &/'

plugin-airline-themes-install: plugin-airline-themes-clean
	@echo BEGIN | sed 's/.*/plugin-airline-themes-install: &/'
	@hg clone -y git://github.com/vim-airline/vim-airline-themes.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-airline-themes | sed 's/.*/plugin-airline-themes-install: &/'
	@echo END | sed 's/.*/plugin-airline-themes-install: &/'

plugin-airline-themes-update: 
	@echo BEGIN | sed 's/.*/plugin-airline-themes-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-airline-themes | sed 's/.*/plugin-airline-themes-update: &/'
	@echo END | sed 's/.*/plugin-airline-themes-update: &/'

plugin-css-color-clean: 
	@echo BEGIN | sed 's/.*/plugin-css-color-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-css-color | sed 's/.*/plugin-css-color-clean: &/'
	@echo END | sed 's/.*/plugin-css-color-clean: &/'

plugin-css-color-install: plugin-css-color-clean
	@echo BEGIN | sed 's/.*/plugin-css-color-install: &/'
	@hg clone -y git://github.com/ap/vim-css-color.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-css-color | sed 's/.*/plugin-css-color-install: &/'
	@echo END | sed 's/.*/plugin-css-color-install: &/'

plugin-css-color-update: 
	@echo BEGIN | sed 's/.*/plugin-css-color-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-css-color | sed 's/.*/plugin-css-color-update: &/'
	@echo END | sed 's/.*/plugin-css-color-update: &/'

plugin-delimitmate-clean: 
	@echo BEGIN | sed 's/.*/plugin-delimitmate-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-delimitmate | sed 's/.*/plugin-delimitmate-clean: &/'
	@echo END | sed 's/.*/plugin-delimitmate-clean: &/'

plugin-delimitmate-install: plugin-delimitmate-clean
	@echo BEGIN | sed 's/.*/plugin-delimitmate-install: &/'
	@hg clone -y git://github.com/Raimondi/delimitMate.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-delimitmate | sed 's/.*/plugin-delimitmate-install: &/'
	@echo END | sed 's/.*/plugin-delimitmate-install: &/'

plugin-delimitmate-update: 
	@echo BEGIN | sed 's/.*/plugin-delimitmate-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-delimitmate | sed 's/.*/plugin-delimitmate-update: &/'
	@echo END | sed 's/.*/plugin-delimitmate-update: &/'

plugin-deoplete-clean: 
	@echo BEGIN | sed 's/.*/plugin-deoplete-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-deoplete | sed 's/.*/plugin-deoplete-clean: &/'
	@echo END | sed 's/.*/plugin-deoplete-clean: &/'

plugin-deoplete-install: plugin-deoplete-clean
	@echo BEGIN | sed 's/.*/plugin-deoplete-install: &/'
	@hg clone -y git://github.com/Shougo/deoplete.nvim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-deoplete | sed 's/.*/plugin-deoplete-install: &/'
	@echo END | sed 's/.*/plugin-deoplete-install: &/'

plugin-deoplete-update: 
	@echo BEGIN | sed 's/.*/plugin-deoplete-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-deoplete | sed 's/.*/plugin-deoplete-update: &/'
	@echo END | sed 's/.*/plugin-deoplete-update: &/'

plugin-deoplete-go-clean: 
	@echo BEGIN | sed 's/.*/plugin-deoplete-go-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-deoplete-go | sed 's/.*/plugin-deoplete-go-clean: &/'
	@echo END | sed 's/.*/plugin-deoplete-go-clean: &/'

plugin-deoplete-go-install: plugin-deoplete-go-clean
	@echo BEGIN | sed 's/.*/plugin-deoplete-go-install: &/'
	@hg clone -y git://github.com/zchee/deoplete-go.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-deoplete-go | sed 's/.*/plugin-deoplete-go-install: &/'
	@echo END | sed 's/.*/plugin-deoplete-go-install: &/'

plugin-deoplete-go-update: 
	@echo BEGIN | sed 's/.*/plugin-deoplete-go-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-deoplete-go | sed 's/.*/plugin-deoplete-go-update: &/'
	@echo END | sed 's/.*/plugin-deoplete-go-update: &/'

plugin-deoplete-jedi-clean: 
	@echo BEGIN | sed 's/.*/plugin-deoplete-jedi-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-deoplete-jedi | sed 's/.*/plugin-deoplete-jedi-clean: &/'
	@echo END | sed 's/.*/plugin-deoplete-jedi-clean: &/'

plugin-deoplete-jedi-install: plugin-deoplete-jedi-clean
	@echo BEGIN | sed 's/.*/plugin-deoplete-jedi-install: &/'
	@hg clone -y git://github.com/zchee/deoplete-jedi.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-deoplete-jedi | sed 's/.*/plugin-deoplete-jedi-install: &/'
	@echo END | sed 's/.*/plugin-deoplete-jedi-install: &/'

plugin-deoplete-jedi-update: 
	@echo BEGIN | sed 's/.*/plugin-deoplete-jedi-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-deoplete-jedi | sed 's/.*/plugin-deoplete-jedi-update: &/'
	@echo END | sed 's/.*/plugin-deoplete-jedi-update: &/'

plugin-editorconfig-clean: 
	@echo BEGIN | sed 's/.*/plugin-editorconfig-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-editorconfig | sed 's/.*/plugin-editorconfig-clean: &/'
	@echo END | sed 's/.*/plugin-editorconfig-clean: &/'

plugin-editorconfig-install: plugin-editorconfig-clean
	@echo BEGIN | sed 's/.*/plugin-editorconfig-install: &/'
	@hg clone -y git://github.com/editorconfig/editorconfig-vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-editorconfig | sed 's/.*/plugin-editorconfig-install: &/'
	@echo END | sed 's/.*/plugin-editorconfig-install: &/'

plugin-editorconfig-update: 
	@echo BEGIN | sed 's/.*/plugin-editorconfig-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-editorconfig | sed 's/.*/plugin-editorconfig-update: &/'
	@echo END | sed 's/.*/plugin-editorconfig-update: &/'

plugin-fugitive-clean: 
	@echo BEGIN | sed 's/.*/plugin-fugitive-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-fugitive | sed 's/.*/plugin-fugitive-clean: &/'
	@echo END | sed 's/.*/plugin-fugitive-clean: &/'

plugin-fugitive-install: plugin-fugitive-clean
	@echo BEGIN | sed 's/.*/plugin-fugitive-install: &/'
	@hg clone -y git://github.com/tpope/vim-fugitive.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-fugitive | sed 's/.*/plugin-fugitive-install: &/'
	@echo END | sed 's/.*/plugin-fugitive-install: &/'

plugin-fugitive-update: 
	@echo BEGIN | sed 's/.*/plugin-fugitive-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-fugitive | sed 's/.*/plugin-fugitive-update: &/'
	@echo END | sed 's/.*/plugin-fugitive-update: &/'

plugin-golang-clean: 
	@echo BEGIN | sed 's/.*/plugin-golang-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-golang | sed 's/.*/plugin-golang-clean: &/'
	@echo END | sed 's/.*/plugin-golang-clean: &/'

plugin-golang-install: plugin-golang-clean
	@echo BEGIN | sed 's/.*/plugin-golang-install: &/'
	@hg clone -y git://github.com/fatih/vim-go.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-golang | sed 's/.*/plugin-golang-install: &/'
	@echo END | sed 's/.*/plugin-golang-install: &/'

plugin-golang-update: 
	@echo BEGIN | sed 's/.*/plugin-golang-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-golang | sed 's/.*/plugin-golang-update: &/'
	@echo END | sed 's/.*/plugin-golang-update: &/'

plugin-golden-ratio-clean: 
	@echo BEGIN | sed 's/.*/plugin-golden-ratio-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-golden-ratio | sed 's/.*/plugin-golden-ratio-clean: &/'
	@echo END | sed 's/.*/plugin-golden-ratio-clean: &/'

plugin-golden-ratio-install: plugin-golden-ratio-clean
	@echo BEGIN | sed 's/.*/plugin-golden-ratio-install: &/'
	@hg clone -y git://github.com/roman/golden-ratio.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-golden-ratio | sed 's/.*/plugin-golden-ratio-install: &/'
	@echo END | sed 's/.*/plugin-golden-ratio-install: &/'

plugin-golden-ratio-update: 
	@echo BEGIN | sed 's/.*/plugin-golden-ratio-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-golden-ratio | sed 's/.*/plugin-golden-ratio-update: &/'
	@echo END | sed 's/.*/plugin-golden-ratio-update: &/'

plugin-gui-shim-clean: 
	@echo BEGIN | sed 's/.*/plugin-gui-shim-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-gui-shim | sed 's/.*/plugin-gui-shim-clean: &/'
	@echo END | sed 's/.*/plugin-gui-shim-clean: &/'

plugin-gui-shim-install: plugin-gui-shim-clean
	@echo BEGIN | sed 's/.*/plugin-gui-shim-install: &/'
	@hg clone -y git://github.com/equalsraf/neovim-gui-shim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-gui-shim | sed 's/.*/plugin-gui-shim-install: &/'
	@echo END | sed 's/.*/plugin-gui-shim-install: &/'

plugin-gui-shim-update: 
	@echo BEGIN | sed 's/.*/plugin-gui-shim-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-gui-shim | sed 's/.*/plugin-gui-shim-update: &/'
	@echo END | sed 's/.*/plugin-gui-shim-update: &/'

plugin-javascript-clean: 
	@echo BEGIN | sed 's/.*/plugin-javascript-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-javascript | sed 's/.*/plugin-javascript-clean: &/'
	@echo END | sed 's/.*/plugin-javascript-clean: &/'

plugin-javascript-install: plugin-javascript-clean
	@echo BEGIN | sed 's/.*/plugin-javascript-install: &/'
	@hg clone -y git://github.com/pangloss/vim-javascript.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-javascript | sed 's/.*/plugin-javascript-install: &/'
	@echo END | sed 's/.*/plugin-javascript-install: &/'

plugin-javascript-update: 
	@echo BEGIN | sed 's/.*/plugin-javascript-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-javascript | sed 's/.*/plugin-javascript-update: &/'
	@echo END | sed 's/.*/plugin-javascript-update: &/'

plugin-rainbow-csv-clean: 
	@echo BEGIN | sed 's/.*/plugin-rainbow-csv-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-rainbow-csv | sed 's/.*/plugin-rainbow-csv-clean: &/'
	@echo END | sed 's/.*/plugin-rainbow-csv-clean: &/'

plugin-rainbow-csv-install: plugin-rainbow-csv-clean
	@echo BEGIN | sed 's/.*/plugin-rainbow-csv-install: &/'
	@hg clone -y git://github.com/vim-scripts/rainbow_csv.vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-rainbow-csv | sed 's/.*/plugin-rainbow-csv-install: &/'
	@echo END | sed 's/.*/plugin-rainbow-csv-install: &/'

plugin-rainbow-csv-update: 
	@echo BEGIN | sed 's/.*/plugin-rainbow-csv-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-rainbow-csv | sed 's/.*/plugin-rainbow-csv-update: &/'
	@echo END | sed 's/.*/plugin-rainbow-csv-update: &/'

plugin-rainbow-paren-clean: 
	@echo BEGIN | sed 's/.*/plugin-rainbow-paren-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-rainbow-paren | sed 's/.*/plugin-rainbow-paren-clean: &/'
	@echo END | sed 's/.*/plugin-rainbow-paren-clean: &/'

plugin-rainbow-paren-install: plugin-rainbow-paren-clean
	@echo BEGIN | sed 's/.*/plugin-rainbow-paren-install: &/'
	@hg clone -y git://github.com/junegunn/rainbow_parentheses.vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-rainbow-paren | sed 's/.*/plugin-rainbow-paren-install: &/'
	@echo END | sed 's/.*/plugin-rainbow-paren-install: &/'

plugin-rainbow-paren-update: 
	@echo BEGIN | sed 's/.*/plugin-rainbow-paren-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-rainbow-paren | sed 's/.*/plugin-rainbow-paren-update: &/'
	@echo END | sed 's/.*/plugin-rainbow-paren-update: &/'

plugin-rust-clean: 
	@echo BEGIN | sed 's/.*/plugin-rust-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-rust | sed 's/.*/plugin-rust-clean: &/'
	@echo END | sed 's/.*/plugin-rust-clean: &/'

plugin-rust-install: plugin-rust-clean
	@echo BEGIN | sed 's/.*/plugin-rust-install: &/'
	@hg clone -y git://github.com/rust-lang/rust.vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-rust | sed 's/.*/plugin-rust-install: &/'
	@echo END | sed 's/.*/plugin-rust-install: &/'

plugin-rust-update: 
	@echo BEGIN | sed 's/.*/plugin-rust-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-rust | sed 's/.*/plugin-rust-update: &/'
	@echo END | sed 's/.*/plugin-rust-update: &/'

plugin-vawa-clean: 
	@echo BEGIN | sed 's/.*/plugin-vawa-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-vawa | sed 's/.*/plugin-vawa-clean: &/'
	@echo END | sed 's/.*/plugin-vawa-clean: &/'

plugin-vawa-install: plugin-vawa-clean
	@echo BEGIN | sed 's/.*/plugin-vawa-install: &/'
	@hg clone -y ssh://hg@bitbucket.org/sras/vawa /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-vawa | sed 's/.*/plugin-vawa-install: &/'
	@echo END | sed 's/.*/plugin-vawa-install: &/'

plugin-vawa-update: 
	@echo BEGIN | sed 's/.*/plugin-vawa-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-vawa | sed 's/.*/plugin-vawa-update: &/'
	@echo END | sed 's/.*/plugin-vawa-update: &/'

plugin-vimcompletesme-clean: 
	@echo BEGIN | sed 's/.*/plugin-vimcompletesme-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-vimcompletesme | sed 's/.*/plugin-vimcompletesme-clean: &/'
	@echo END | sed 's/.*/plugin-vimcompletesme-clean: &/'

plugin-vimcompletesme-install: plugin-vimcompletesme-clean
	@echo BEGIN | sed 's/.*/plugin-vimcompletesme-install: &/'
	@hg clone -y git://github.com/ajh17/VimCompletesMe.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-vimcompletesme | sed 's/.*/plugin-vimcompletesme-install: &/'
	@echo END | sed 's/.*/plugin-vimcompletesme-install: &/'

plugin-vimcompletesme-update: 
	@echo BEGIN | sed 's/.*/plugin-vimcompletesme-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-vimcompletesme | sed 's/.*/plugin-vimcompletesme-update: &/'
	@echo END | sed 's/.*/plugin-vimcompletesme-update: &/'

plugin-vinegar-clean: 
	@echo BEGIN | sed 's/.*/plugin-vinegar-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-vinegar | sed 's/.*/plugin-vinegar-clean: &/'
	@echo END | sed 's/.*/plugin-vinegar-clean: &/'

plugin-vinegar-install: plugin-vinegar-clean
	@echo BEGIN | sed 's/.*/plugin-vinegar-install: &/'
	@hg clone -y git://github.com/tpope/vim-vinegar.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-vinegar | sed 's/.*/plugin-vinegar-install: &/'
	@echo END | sed 's/.*/plugin-vinegar-install: &/'

plugin-vinegar-update: 
	@echo BEGIN | sed 's/.*/plugin-vinegar-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/plugin-vinegar | sed 's/.*/plugin-vinegar-update: &/'
	@echo END | sed 's/.*/plugin-vinegar-update: &/'

syntax-css-clean: 
	@echo BEGIN | sed 's/.*/syntax-css-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-css | sed 's/.*/syntax-css-clean: &/'
	@echo END | sed 's/.*/syntax-css-clean: &/'

syntax-css-install: syntax-css-clean
	@echo BEGIN | sed 's/.*/syntax-css-install: &/'
	@hg clone -y git://github.com/hail2u/vim-css3-syntax.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-css | sed 's/.*/syntax-css-install: &/'
	@echo END | sed 's/.*/syntax-css-install: &/'

syntax-css-update: 
	@echo BEGIN | sed 's/.*/syntax-css-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-css | sed 's/.*/syntax-css-update: &/'
	@echo END | sed 's/.*/syntax-css-update: &/'

syntax-dockerfile-clean: 
	@echo BEGIN | sed 's/.*/syntax-dockerfile-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-dockerfile | sed 's/.*/syntax-dockerfile-clean: &/'
	@echo END | sed 's/.*/syntax-dockerfile-clean: &/'

syntax-dockerfile-install: syntax-dockerfile-clean
	@echo BEGIN | sed 's/.*/syntax-dockerfile-install: &/'
	@hg clone -y git://github.com/ekalinin/Dockerfile.vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-dockerfile | sed 's/.*/syntax-dockerfile-install: &/'
	@echo END | sed 's/.*/syntax-dockerfile-install: &/'

syntax-dockerfile-update: 
	@echo BEGIN | sed 's/.*/syntax-dockerfile-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-dockerfile | sed 's/.*/syntax-dockerfile-update: &/'
	@echo END | sed 's/.*/syntax-dockerfile-update: &/'

syntax-html5-clean: 
	@echo BEGIN | sed 's/.*/syntax-html5-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-html5 | sed 's/.*/syntax-html5-clean: &/'
	@echo END | sed 's/.*/syntax-html5-clean: &/'

syntax-html5-install: syntax-html5-clean
	@echo BEGIN | sed 's/.*/syntax-html5-install: &/'
	@hg clone -y git://github.com/othree/html5.vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-html5 | sed 's/.*/syntax-html5-install: &/'
	@echo END | sed 's/.*/syntax-html5-install: &/'

syntax-html5-update: 
	@echo BEGIN | sed 's/.*/syntax-html5-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-html5 | sed 's/.*/syntax-html5-update: &/'
	@echo END | sed 's/.*/syntax-html5-update: &/'

syntax-javascript-libraries-clean: 
	@echo BEGIN | sed 's/.*/syntax-javascript-libraries-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-javascript-libraries | sed 's/.*/syntax-javascript-libraries-clean: &/'
	@echo END | sed 's/.*/syntax-javascript-libraries-clean: &/'

syntax-javascript-libraries-install: syntax-javascript-libraries-clean
	@echo BEGIN | sed 's/.*/syntax-javascript-libraries-install: &/'
	@hg clone -y git://github.com/othree/javascript-libraries-syntax.vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-javascript-libraries | sed 's/.*/syntax-javascript-libraries-install: &/'
	@echo END | sed 's/.*/syntax-javascript-libraries-install: &/'

syntax-javascript-libraries-update: 
	@echo BEGIN | sed 's/.*/syntax-javascript-libraries-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-javascript-libraries | sed 's/.*/syntax-javascript-libraries-update: &/'
	@echo END | sed 's/.*/syntax-javascript-libraries-update: &/'

syntax-php-clean: 
	@echo BEGIN | sed 's/.*/syntax-php-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-php | sed 's/.*/syntax-php-clean: &/'
	@echo END | sed 's/.*/syntax-php-clean: &/'

syntax-php-install: syntax-php-clean
	@echo BEGIN | sed 's/.*/syntax-php-install: &/'
	@hg clone -y git://github.com/StanAngeloff/php.vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-php | sed 's/.*/syntax-php-install: &/'
	@echo END | sed 's/.*/syntax-php-install: &/'

syntax-php-update: 
	@echo BEGIN | sed 's/.*/syntax-php-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/syntax-php | sed 's/.*/syntax-php-update: &/'
	@echo END | sed 's/.*/syntax-php-update: &/'

theme-broduo-clean: 
	@echo BEGIN | sed 's/.*/theme-broduo-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-broduo | sed 's/.*/theme-broduo-clean: &/'
	@echo END | sed 's/.*/theme-broduo-clean: &/'

theme-broduo-install: theme-broduo-clean
	@echo BEGIN | sed 's/.*/theme-broduo-install: &/'
	@hg clone -y git://github.com/broduo/broduo-color-scheme.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-broduo | sed 's/.*/theme-broduo-install: &/'
	@echo END | sed 's/.*/theme-broduo-install: &/'

theme-broduo-update: 
	@echo BEGIN | sed 's/.*/theme-broduo-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-broduo | sed 's/.*/theme-broduo-update: &/'
	@echo END | sed 's/.*/theme-broduo-update: &/'

theme-buddy-clean: 
	@echo BEGIN | sed 's/.*/theme-buddy-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-buddy | sed 's/.*/theme-buddy-clean: &/'
	@echo END | sed 's/.*/theme-buddy-clean: &/'

theme-buddy-install: theme-buddy-clean
	@echo BEGIN | sed 's/.*/theme-buddy-install: &/'
	@hg clone -y git://github.com/DrSpatula/vim-buddy.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-buddy | sed 's/.*/theme-buddy-install: &/'
	@echo END | sed 's/.*/theme-buddy-install: &/'

theme-buddy-update: 
	@echo BEGIN | sed 's/.*/theme-buddy-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-buddy | sed 's/.*/theme-buddy-update: &/'
	@echo END | sed 's/.*/theme-buddy-update: &/'

theme-vividchalk-clean: 
	@echo BEGIN | sed 's/.*/theme-vividchalk-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-vividchalk | sed 's/.*/theme-vividchalk-clean: &/'
	@echo END | sed 's/.*/theme-vividchalk-clean: &/'

theme-vividchalk-install: theme-vividchalk-clean
	@echo BEGIN | sed 's/.*/theme-vividchalk-install: &/'
	@hg clone -y git://github.com/tpope/vim-vividchalk.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-vividchalk | sed 's/.*/theme-vividchalk-install: &/'
	@echo END | sed 's/.*/theme-vividchalk-install: &/'

theme-vividchalk-update: 
	@echo BEGIN | sed 's/.*/theme-vividchalk-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-vividchalk | sed 's/.*/theme-vividchalk-update: &/'
	@echo END | sed 's/.*/theme-vividchalk-update: &/'

theme-base16-clean: 
	@echo BEGIN | sed 's/.*/theme-base16-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-base16 | sed 's/.*/theme-base16-clean: &/'
	@echo END | sed 's/.*/theme-base16-clean: &/'

theme-base16-install: theme-base16-clean
	@echo BEGIN | sed 's/.*/theme-base16-install: &/'
	@hg clone -y git://github.com/chriskempson/base16-vim.git /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-base16 | sed 's/.*/theme-base16-install: &/'
	@echo END | sed 's/.*/theme-base16-install: &/'

theme-base16-update: 
	@echo BEGIN | sed 's/.*/theme-base16-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/neovim/default-bundles/theme-base16 | sed 's/.*/theme-base16-update: &/'
	@echo END | sed 's/.*/theme-base16-update: &/'

clean: pathogen-clean clean-vim clean-vimrc
	@echo BEGIN | sed 's/.*/clean: &/'
	@echo END | sed 's/.*/clean: &/'

clean-vim: 
	@echo BEGIN | sed 's/.*/clean-vim: &/'
	@rm -rf /Users/jeffrey04/.config/nvim | sed 's/.*/clean-vim: &/'
	@echo END | sed 's/.*/clean-vim: &/'

clean-vimrc: 
	@echo BEGIN | sed 's/.*/clean-vimrc: &/'
	@rm -rf /Users/jeffrey04/.config/nvim/init.vim | sed 's/.*/clean-vimrc: &/'
	@echo END | sed 's/.*/clean-vimrc: &/'

update: pathogen-update indent-php-update indent-python-update omnicomplete-php-update omnicomplete-css-update plugin-airline-update plugin-airline-themes-update plugin-css-color-update plugin-delimitmate-update plugin-deoplete-update plugin-deoplete-go-update plugin-deoplete-jedi-update plugin-editorconfig-update plugin-fugitive-update plugin-golang-update plugin-golden-ratio-update plugin-gui-shim-update plugin-javascript-update plugin-rainbow-csv-update plugin-rainbow-paren-update plugin-rust-update plugin-vawa-update plugin-vimcompletesme-update plugin-vinegar-update syntax-css-update syntax-dockerfile-update syntax-html5-update syntax-javascript-libraries-update syntax-php-update theme-broduo-update theme-buddy-update theme-vividchalk-update theme-base16-update
	@echo BEGIN | sed 's/.*/update: &/'
	@echo END | sed 's/.*/update: &/'

.vim: 
	@echo BEGIN | sed 's/.*/.vim: &/'
	@mkdir /Users/jeffrey04/.config/nvim | sed 's/.*/.vim: &/'
	@echo END | sed 's/.*/.vim: &/'

.vimrc: 
	@echo BEGIN | sed 's/.*/.vimrc: &/'
	@ln -s /Users/jeffrey04/Projects/vim-manager/neovim/vim-config /Users/jeffrey04/.config/nvim/init.vim | sed 's/.*/.vimrc: &/'
	@echo END | sed 's/.*/.vimrc: &/'

