all: bootstrap filetype-clojure-install filetype-go-install filetype-javascript-install filetype-json-install filetype-latex-install filetype-lisp-install filetype-puppet-install filetype-qml-install filetype-ruby-install indent-php-install indent-python-install omnicomplete-php-install plugin-airline-install plugin-autopep8-install plugin-clojure-highlight-install plugin-css-color-install plugin-delimitmate-install plugin-ctrlp-install plugin-fencview-install plugin-fireplace-install plugin-golden-ratio-install plugin-isort-install plugin-l9-install plugin-neocomplete-install plugin-niji-install plugin-php-namespace-install plugin-rainbow-csv-install plugin-vawa-install plugin-vimcompletesme-install plugin-vimwiki-install plugin-vinegar-install syntax-php-install theme-gruvbox-install theme-solarized-install
	@echo BEGIN | sed 's/.*/all: &/'
	@echo END | sed 's/.*/all: &/'

bootstrap: pathogen-install .vimrc
	@echo BEGIN | sed 's/.*/bootstrap: &/'
	@echo END | sed 's/.*/bootstrap: &/'

pathogen-clean: filetype-clojure-clean filetype-go-clean filetype-javascript-clean filetype-json-clean filetype-latex-clean filetype-lisp-clean filetype-puppet-clean filetype-qml-clean filetype-ruby-clean indent-php-clean indent-python-clean omnicomplete-php-clean plugin-airline-clean plugin-autopep8-clean plugin-clojure-highlight-clean plugin-css-color-clean plugin-delimitmate-clean plugin-ctrlp-clean plugin-fencview-clean plugin-fireplace-clean plugin-golden-ratio-clean plugin-isort-clean plugin-l9-clean plugin-neocomplete-clean plugin-niji-clean plugin-php-namespace-clean plugin-rainbow-csv-clean plugin-vawa-clean plugin-vimcompletesme-clean plugin-vimwiki-clean plugin-vinegar-clean syntax-php-clean theme-gruvbox-clean theme-solarized-clean
	@echo BEGIN | sed 's/.*/pathogen-clean: &/'
	@if [ -d /Users/jeffrey04/.vim/.hg ]; then hg update -y null -R /Users/jeffrey04/.vim && rm -rf /Users/jeffrey04/.vim/.hg; fi | sed 's/.*/pathogen-clean: &/'
	@rm -rf /Users/jeffrey04/.vim/bundle | sed 's/.*/pathogen-clean: &/'
	@echo END | sed 's/.*/pathogen-clean: &/'

pathogen-install: pathogen-clean .vim
	@echo BEGIN | sed 's/.*/pathogen-install: &/'
	@hg clone -y git://github.com/tpope/vim-pathogen.git /Users/jeffrey04/.vim | sed 's/.*/pathogen-install: &/'
	@ln -s /Users/jeffrey04/Projects/vim-manager/default-bundles /Users/jeffrey04/.vim/bundle | sed 's/.*/pathogen-install: &/'
	@echo END | sed 's/.*/pathogen-install: &/'

pathogen-update: 
	@echo BEGIN | sed 's/.*/pathogen-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/.vim | sed 's/.*/pathogen-update: &/'
	@echo END | sed 's/.*/pathogen-update: &/'

filetype-clojure-clean: 
	@echo BEGIN | sed 's/.*/filetype-clojure-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-clojure | sed 's/.*/filetype-clojure-clean: &/'
	@echo END | sed 's/.*/filetype-clojure-clean: &/'

filetype-clojure-install: filetype-clojure-clean
	@echo BEGIN | sed 's/.*/filetype-clojure-install: &/'
	@hg clone -y git://github.com/guns/vim-clojure-static.git /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-clojure | sed 's/.*/filetype-clojure-install: &/'
	@echo END | sed 's/.*/filetype-clojure-install: &/'

filetype-clojure-update: 
	@echo BEGIN | sed 's/.*/filetype-clojure-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-clojure | sed 's/.*/filetype-clojure-update: &/'
	@echo END | sed 's/.*/filetype-clojure-update: &/'

filetype-go-clean: 
	@echo BEGIN | sed 's/.*/filetype-go-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-go | sed 's/.*/filetype-go-clean: &/'
	@echo END | sed 's/.*/filetype-go-clean: &/'

filetype-go-install: filetype-go-clean
	@echo BEGIN | sed 's/.*/filetype-go-install: &/'
	@hg clone -y git://github.com/fatih/vim-go.git /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-go | sed 's/.*/filetype-go-install: &/'
	@echo END | sed 's/.*/filetype-go-install: &/'

filetype-go-update: 
	@echo BEGIN | sed 's/.*/filetype-go-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-go | sed 's/.*/filetype-go-update: &/'
	@echo END | sed 's/.*/filetype-go-update: &/'

filetype-javascript-clean: 
	@echo BEGIN | sed 's/.*/filetype-javascript-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-javascript | sed 's/.*/filetype-javascript-clean: &/'
	@echo END | sed 's/.*/filetype-javascript-clean: &/'

filetype-javascript-install: filetype-javascript-clean
	@echo BEGIN | sed 's/.*/filetype-javascript-install: &/'
	@hg clone -y git://github.com/pangloss/vim-javascript.git /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-javascript | sed 's/.*/filetype-javascript-install: &/'
	@echo END | sed 's/.*/filetype-javascript-install: &/'

filetype-javascript-update: 
	@echo BEGIN | sed 's/.*/filetype-javascript-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-javascript | sed 's/.*/filetype-javascript-update: &/'
	@echo END | sed 's/.*/filetype-javascript-update: &/'

filetype-json-clean: 
	@echo BEGIN | sed 's/.*/filetype-json-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-json | sed 's/.*/filetype-json-clean: &/'
	@echo END | sed 's/.*/filetype-json-clean: &/'

filetype-json-install: filetype-json-clean
	@echo BEGIN | sed 's/.*/filetype-json-install: &/'
	@hg clone -y git://github.com/rogerz/vim-json.git /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-json | sed 's/.*/filetype-json-install: &/'
	@echo END | sed 's/.*/filetype-json-install: &/'

filetype-json-update: 
	@echo BEGIN | sed 's/.*/filetype-json-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-json | sed 's/.*/filetype-json-update: &/'
	@echo END | sed 's/.*/filetype-json-update: &/'

filetype-latex-clean: 
	@echo BEGIN | sed 's/.*/filetype-latex-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-latex | sed 's/.*/filetype-latex-clean: &/'
	@echo END | sed 's/.*/filetype-latex-clean: &/'

filetype-latex-install: filetype-latex-clean
	@echo BEGIN | sed 's/.*/filetype-latex-install: &/'
	@hg clone -y git://github.com/vim-latex/vim-latex.git /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-latex | sed 's/.*/filetype-latex-install: &/'
	@echo END | sed 's/.*/filetype-latex-install: &/'

filetype-latex-update: 
	@echo BEGIN | sed 's/.*/filetype-latex-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-latex | sed 's/.*/filetype-latex-update: &/'
	@echo END | sed 's/.*/filetype-latex-update: &/'

filetype-lisp-clean: 
	@echo BEGIN | sed 's/.*/filetype-lisp-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-lisp | sed 's/.*/filetype-lisp-clean: &/'
	@echo END | sed 's/.*/filetype-lisp-clean: &/'

filetype-lisp-install: filetype-lisp-clean
	@echo BEGIN | sed 's/.*/filetype-lisp-install: &/'
	@hg clone -y https://bitbucket.org/kovisoft/slimv /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-lisp | sed 's/.*/filetype-lisp-install: &/'
	@echo END | sed 's/.*/filetype-lisp-install: &/'

filetype-lisp-update: 
	@echo BEGIN | sed 's/.*/filetype-lisp-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-lisp | sed 's/.*/filetype-lisp-update: &/'
	@echo END | sed 's/.*/filetype-lisp-update: &/'

filetype-puppet-clean: 
	@echo BEGIN | sed 's/.*/filetype-puppet-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-puppet | sed 's/.*/filetype-puppet-clean: &/'
	@echo END | sed 's/.*/filetype-puppet-clean: &/'

filetype-puppet-install: filetype-puppet-clean
	@echo BEGIN | sed 's/.*/filetype-puppet-install: &/'
	@hg clone -y git://github.com/rodjek/vim-puppet.git /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-puppet | sed 's/.*/filetype-puppet-install: &/'
	@echo END | sed 's/.*/filetype-puppet-install: &/'

filetype-puppet-update: 
	@echo BEGIN | sed 's/.*/filetype-puppet-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-puppet | sed 's/.*/filetype-puppet-update: &/'
	@echo END | sed 's/.*/filetype-puppet-update: &/'

filetype-qml-clean: 
	@echo BEGIN | sed 's/.*/filetype-qml-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-qml | sed 's/.*/filetype-qml-clean: &/'
	@echo END | sed 's/.*/filetype-qml-clean: &/'

filetype-qml-install: filetype-qml-clean
	@echo BEGIN | sed 's/.*/filetype-qml-install: &/'
	@hg clone -y git://github.com/peterhoeg/vim-qml.git /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-qml | sed 's/.*/filetype-qml-install: &/'
	@echo END | sed 's/.*/filetype-qml-install: &/'

filetype-qml-update: 
	@echo BEGIN | sed 's/.*/filetype-qml-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-qml | sed 's/.*/filetype-qml-update: &/'
	@echo END | sed 's/.*/filetype-qml-update: &/'

filetype-ruby-clean: 
	@echo BEGIN | sed 's/.*/filetype-ruby-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-ruby | sed 's/.*/filetype-ruby-clean: &/'
	@echo END | sed 's/.*/filetype-ruby-clean: &/'

filetype-ruby-install: filetype-ruby-clean
	@echo BEGIN | sed 's/.*/filetype-ruby-install: &/'
	@hg clone -y git://github.com/vim-ruby/vim-ruby.git /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-ruby | sed 's/.*/filetype-ruby-install: &/'
	@echo END | sed 's/.*/filetype-ruby-install: &/'

filetype-ruby-update: 
	@echo BEGIN | sed 's/.*/filetype-ruby-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/filetype-ruby | sed 's/.*/filetype-ruby-update: &/'
	@echo END | sed 's/.*/filetype-ruby-update: &/'

indent-php-clean: 
	@echo BEGIN | sed 's/.*/indent-php-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/indent-php | sed 's/.*/indent-php-clean: &/'
	@echo END | sed 's/.*/indent-php-clean: &/'

indent-php-install: indent-php-clean
	@echo BEGIN | sed 's/.*/indent-php-install: &/'
	@hg clone -y git://github.com/2072/PHP-Indenting-for-VIm.git /Users/jeffrey04/Projects/vim-manager/default-bundles/indent-php | sed 's/.*/indent-php-install: &/'
	@echo END | sed 's/.*/indent-php-install: &/'

indent-php-update: 
	@echo BEGIN | sed 's/.*/indent-php-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/indent-php | sed 's/.*/indent-php-update: &/'
	@echo END | sed 's/.*/indent-php-update: &/'

indent-python-clean: 
	@echo BEGIN | sed 's/.*/indent-python-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/indent-python | sed 's/.*/indent-python-clean: &/'
	@echo END | sed 's/.*/indent-python-clean: &/'

indent-python-install: indent-python-clean
	@echo BEGIN | sed 's/.*/indent-python-install: &/'
	@hg clone -y git://github.com/hynek/vim-python-pep8-indent.git /Users/jeffrey04/Projects/vim-manager/default-bundles/indent-python | sed 's/.*/indent-python-install: &/'
	@echo END | sed 's/.*/indent-python-install: &/'

indent-python-update: 
	@echo BEGIN | sed 's/.*/indent-python-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/indent-python | sed 's/.*/indent-python-update: &/'
	@echo END | sed 's/.*/indent-python-update: &/'

omnicomplete-php-clean: 
	@echo BEGIN | sed 's/.*/omnicomplete-php-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/omnicomplete-php | sed 's/.*/omnicomplete-php-clean: &/'
	@echo END | sed 's/.*/omnicomplete-php-clean: &/'

omnicomplete-php-install: omnicomplete-php-clean
	@echo BEGIN | sed 's/.*/omnicomplete-php-install: &/'
	@hg clone -y git://github.com/shawncplus/phpcomplete.vim.git /Users/jeffrey04/Projects/vim-manager/default-bundles/omnicomplete-php | sed 's/.*/omnicomplete-php-install: &/'
	@echo END | sed 's/.*/omnicomplete-php-install: &/'

omnicomplete-php-update: 
	@echo BEGIN | sed 's/.*/omnicomplete-php-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/omnicomplete-php | sed 's/.*/omnicomplete-php-update: &/'
	@echo END | sed 's/.*/omnicomplete-php-update: &/'

plugin-airline-clean: 
	@echo BEGIN | sed 's/.*/plugin-airline-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-airline | sed 's/.*/plugin-airline-clean: &/'
	@echo END | sed 's/.*/plugin-airline-clean: &/'

plugin-airline-install: plugin-airline-clean
	@echo BEGIN | sed 's/.*/plugin-airline-install: &/'
	@hg clone -y git://github.com/bling/vim-airline.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-airline | sed 's/.*/plugin-airline-install: &/'
	@echo END | sed 's/.*/plugin-airline-install: &/'

plugin-airline-update: 
	@echo BEGIN | sed 's/.*/plugin-airline-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-airline | sed 's/.*/plugin-airline-update: &/'
	@echo END | sed 's/.*/plugin-airline-update: &/'

plugin-autopep8-clean: 
	@echo BEGIN | sed 's/.*/plugin-autopep8-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-autopep8 | sed 's/.*/plugin-autopep8-clean: &/'
	@echo END | sed 's/.*/plugin-autopep8-clean: &/'

plugin-autopep8-install: plugin-autopep8-clean
	@echo BEGIN | sed 's/.*/plugin-autopep8-install: &/'
	@hg clone -y git@github.com:tell-k/vim-autopep8.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-autopep8 | sed 's/.*/plugin-autopep8-install: &/'
	@echo END | sed 's/.*/plugin-autopep8-install: &/'

plugin-autopep8-update: 
	@echo BEGIN | sed 's/.*/plugin-autopep8-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-autopep8 | sed 's/.*/plugin-autopep8-update: &/'
	@echo END | sed 's/.*/plugin-autopep8-update: &/'

plugin-clojure-highlight-clean: 
	@echo BEGIN | sed 's/.*/plugin-clojure-highlight-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-clojure-highlight | sed 's/.*/plugin-clojure-highlight-clean: &/'
	@echo END | sed 's/.*/plugin-clojure-highlight-clean: &/'

plugin-clojure-highlight-install: plugin-clojure-highlight-clean
	@echo BEGIN | sed 's/.*/plugin-clojure-highlight-install: &/'
	@hg clone -y git://github.com/guns/vim-clojure-highlight.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-clojure-highlight | sed 's/.*/plugin-clojure-highlight-install: &/'
	@echo END | sed 's/.*/plugin-clojure-highlight-install: &/'

plugin-clojure-highlight-update: 
	@echo BEGIN | sed 's/.*/plugin-clojure-highlight-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-clojure-highlight | sed 's/.*/plugin-clojure-highlight-update: &/'
	@echo END | sed 's/.*/plugin-clojure-highlight-update: &/'

plugin-css-color-clean: 
	@echo BEGIN | sed 's/.*/plugin-css-color-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-css-color | sed 's/.*/plugin-css-color-clean: &/'
	@echo END | sed 's/.*/plugin-css-color-clean: &/'

plugin-css-color-install: plugin-css-color-clean
	@echo BEGIN | sed 's/.*/plugin-css-color-install: &/'
	@hg clone -y git@github.com:ap/vim-css-color.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-css-color | sed 's/.*/plugin-css-color-install: &/'
	@echo END | sed 's/.*/plugin-css-color-install: &/'

plugin-css-color-update: 
	@echo BEGIN | sed 's/.*/plugin-css-color-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-css-color | sed 's/.*/plugin-css-color-update: &/'
	@echo END | sed 's/.*/plugin-css-color-update: &/'

plugin-delimitmate-clean: 
	@echo BEGIN | sed 's/.*/plugin-delimitmate-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-delimitmate | sed 's/.*/plugin-delimitmate-clean: &/'
	@echo END | sed 's/.*/plugin-delimitmate-clean: &/'

plugin-delimitmate-install: plugin-delimitmate-clean
	@echo BEGIN | sed 's/.*/plugin-delimitmate-install: &/'
	@hg clone -y git://github.com/Raimondi/delimitMate.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-delimitmate | sed 's/.*/plugin-delimitmate-install: &/'
	@echo END | sed 's/.*/plugin-delimitmate-install: &/'

plugin-delimitmate-update: 
	@echo BEGIN | sed 's/.*/plugin-delimitmate-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-delimitmate | sed 's/.*/plugin-delimitmate-update: &/'
	@echo END | sed 's/.*/plugin-delimitmate-update: &/'

plugin-ctrlp-clean: 
	@echo BEGIN | sed 's/.*/plugin-ctrlp-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-ctrlp | sed 's/.*/plugin-ctrlp-clean: &/'
	@echo END | sed 's/.*/plugin-ctrlp-clean: &/'

plugin-ctrlp-install: plugin-ctrlp-clean
	@echo BEGIN | sed 's/.*/plugin-ctrlp-install: &/'
	@hg clone -y git://github.com/kien/ctrlp.vim /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-ctrlp | sed 's/.*/plugin-ctrlp-install: &/'
	@echo END | sed 's/.*/plugin-ctrlp-install: &/'

plugin-ctrlp-update: 
	@echo BEGIN | sed 's/.*/plugin-ctrlp-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-ctrlp | sed 's/.*/plugin-ctrlp-update: &/'
	@echo END | sed 's/.*/plugin-ctrlp-update: &/'

plugin-fencview-clean: 
	@echo BEGIN | sed 's/.*/plugin-fencview-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-fencview | sed 's/.*/plugin-fencview-clean: &/'
	@echo END | sed 's/.*/plugin-fencview-clean: &/'

plugin-fencview-install: plugin-fencview-clean
	@echo BEGIN | sed 's/.*/plugin-fencview-install: &/'
	@hg clone -y git://github.com/mbbill/fencview.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-fencview | sed 's/.*/plugin-fencview-install: &/'
	@echo END | sed 's/.*/plugin-fencview-install: &/'

plugin-fencview-update: 
	@echo BEGIN | sed 's/.*/plugin-fencview-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-fencview | sed 's/.*/plugin-fencview-update: &/'
	@echo END | sed 's/.*/plugin-fencview-update: &/'

plugin-fireplace-clean: 
	@echo BEGIN | sed 's/.*/plugin-fireplace-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-fireplace | sed 's/.*/plugin-fireplace-clean: &/'
	@echo END | sed 's/.*/plugin-fireplace-clean: &/'

plugin-fireplace-install: plugin-fireplace-clean
	@echo BEGIN | sed 's/.*/plugin-fireplace-install: &/'
	@hg clone -y git://github.com/tpope/vim-fireplace.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-fireplace | sed 's/.*/plugin-fireplace-install: &/'
	@echo END | sed 's/.*/plugin-fireplace-install: &/'

plugin-fireplace-update: 
	@echo BEGIN | sed 's/.*/plugin-fireplace-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-fireplace | sed 's/.*/plugin-fireplace-update: &/'
	@echo END | sed 's/.*/plugin-fireplace-update: &/'

plugin-golden-ratio-clean: 
	@echo BEGIN | sed 's/.*/plugin-golden-ratio-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-golden-ratio | sed 's/.*/plugin-golden-ratio-clean: &/'
	@echo END | sed 's/.*/plugin-golden-ratio-clean: &/'

plugin-golden-ratio-install: plugin-golden-ratio-clean
	@echo BEGIN | sed 's/.*/plugin-golden-ratio-install: &/'
	@hg clone -y git://github.com/roman/golden-ratio /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-golden-ratio | sed 's/.*/plugin-golden-ratio-install: &/'
	@echo END | sed 's/.*/plugin-golden-ratio-install: &/'

plugin-golden-ratio-update: 
	@echo BEGIN | sed 's/.*/plugin-golden-ratio-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-golden-ratio | sed 's/.*/plugin-golden-ratio-update: &/'
	@echo END | sed 's/.*/plugin-golden-ratio-update: &/'

plugin-isort-clean: 
	@echo BEGIN | sed 's/.*/plugin-isort-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-isort | sed 's/.*/plugin-isort-clean: &/'
	@echo END | sed 's/.*/plugin-isort-clean: &/'

plugin-isort-install: plugin-isort-clean
	@echo BEGIN | sed 's/.*/plugin-isort-install: &/'
	@hg clone -y git@github.com:fisadev/vim-isort.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-isort | sed 's/.*/plugin-isort-install: &/'
	@echo END | sed 's/.*/plugin-isort-install: &/'

plugin-isort-update: 
	@echo BEGIN | sed 's/.*/plugin-isort-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-isort | sed 's/.*/plugin-isort-update: &/'
	@echo END | sed 's/.*/plugin-isort-update: &/'

plugin-l9-clean: 
	@echo BEGIN | sed 's/.*/plugin-l9-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-l9 | sed 's/.*/plugin-l9-clean: &/'
	@echo END | sed 's/.*/plugin-l9-clean: &/'

plugin-l9-install: plugin-l9-clean
	@echo BEGIN | sed 's/.*/plugin-l9-install: &/'
	@hg clone -y https://bitbucket.org/ns9tks/vim-l9 /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-l9 | sed 's/.*/plugin-l9-install: &/'
	@echo END | sed 's/.*/plugin-l9-install: &/'

plugin-l9-update: 
	@echo BEGIN | sed 's/.*/plugin-l9-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-l9 | sed 's/.*/plugin-l9-update: &/'
	@echo END | sed 's/.*/plugin-l9-update: &/'

plugin-neocomplete-clean: 
	@echo BEGIN | sed 's/.*/plugin-neocomplete-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-neocomplete | sed 's/.*/plugin-neocomplete-clean: &/'
	@echo END | sed 's/.*/plugin-neocomplete-clean: &/'

plugin-neocomplete-install: plugin-neocomplete-clean
	@echo BEGIN | sed 's/.*/plugin-neocomplete-install: &/'
	@hg clone -y git://github.com/Shougo/neocomplete.vim.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-neocomplete | sed 's/.*/plugin-neocomplete-install: &/'
	@echo END | sed 's/.*/plugin-neocomplete-install: &/'

plugin-neocomplete-update: 
	@echo BEGIN | sed 's/.*/plugin-neocomplete-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-neocomplete | sed 's/.*/plugin-neocomplete-update: &/'
	@echo END | sed 's/.*/plugin-neocomplete-update: &/'

plugin-niji-clean: 
	@echo BEGIN | sed 's/.*/plugin-niji-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-niji | sed 's/.*/plugin-niji-clean: &/'
	@echo END | sed 's/.*/plugin-niji-clean: &/'

plugin-niji-install: plugin-niji-clean
	@echo BEGIN | sed 's/.*/plugin-niji-install: &/'
	@hg clone -y git://github.com/amdt/vim-niji.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-niji | sed 's/.*/plugin-niji-install: &/'
	@echo END | sed 's/.*/plugin-niji-install: &/'

plugin-niji-update: 
	@echo BEGIN | sed 's/.*/plugin-niji-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-niji | sed 's/.*/plugin-niji-update: &/'
	@echo END | sed 's/.*/plugin-niji-update: &/'

plugin-php-namespace-clean: 
	@echo BEGIN | sed 's/.*/plugin-php-namespace-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-php-namespace | sed 's/.*/plugin-php-namespace-clean: &/'
	@echo END | sed 's/.*/plugin-php-namespace-clean: &/'

plugin-php-namespace-install: plugin-php-namespace-clean
	@echo BEGIN | sed 's/.*/plugin-php-namespace-install: &/'
	@hg clone -y git://github.com/arnaud-lb/vim-php-namespace.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-php-namespace | sed 's/.*/plugin-php-namespace-install: &/'
	@echo END | sed 's/.*/plugin-php-namespace-install: &/'

plugin-php-namespace-update: 
	@echo BEGIN | sed 's/.*/plugin-php-namespace-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-php-namespace | sed 's/.*/plugin-php-namespace-update: &/'
	@echo END | sed 's/.*/plugin-php-namespace-update: &/'

plugin-rainbow-csv-clean: 
	@echo BEGIN | sed 's/.*/plugin-rainbow-csv-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-rainbow-csv | sed 's/.*/plugin-rainbow-csv-clean: &/'
	@echo END | sed 's/.*/plugin-rainbow-csv-clean: &/'

plugin-rainbow-csv-install: plugin-rainbow-csv-clean
	@echo BEGIN | sed 's/.*/plugin-rainbow-csv-install: &/'
	@hg clone -y git://github.com/vim-scripts/rainbow_csv.vim.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-rainbow-csv | sed 's/.*/plugin-rainbow-csv-install: &/'
	@echo END | sed 's/.*/plugin-rainbow-csv-install: &/'

plugin-rainbow-csv-update: 
	@echo BEGIN | sed 's/.*/plugin-rainbow-csv-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-rainbow-csv | sed 's/.*/plugin-rainbow-csv-update: &/'
	@echo END | sed 's/.*/plugin-rainbow-csv-update: &/'

plugin-vawa-clean: 
	@echo BEGIN | sed 's/.*/plugin-vawa-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vawa | sed 's/.*/plugin-vawa-clean: &/'
	@echo END | sed 's/.*/plugin-vawa-clean: &/'

plugin-vawa-install: plugin-vawa-clean
	@echo BEGIN | sed 's/.*/plugin-vawa-install: &/'
	@hg clone -y https://bitbucket.org/sras/vawa /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vawa | sed 's/.*/plugin-vawa-install: &/'
	@echo END | sed 's/.*/plugin-vawa-install: &/'

plugin-vawa-update: 
	@echo BEGIN | sed 's/.*/plugin-vawa-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vawa | sed 's/.*/plugin-vawa-update: &/'
	@echo END | sed 's/.*/plugin-vawa-update: &/'

plugin-vimcompletesme-clean: 
	@echo BEGIN | sed 's/.*/plugin-vimcompletesme-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vimcompletesme | sed 's/.*/plugin-vimcompletesme-clean: &/'
	@echo END | sed 's/.*/plugin-vimcompletesme-clean: &/'

plugin-vimcompletesme-install: plugin-vimcompletesme-clean
	@echo BEGIN | sed 's/.*/plugin-vimcompletesme-install: &/'
	@hg clone -y git://github.com/ajh17/VimCompletesMe.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vimcompletesme | sed 's/.*/plugin-vimcompletesme-install: &/'
	@echo END | sed 's/.*/plugin-vimcompletesme-install: &/'

plugin-vimcompletesme-update: 
	@echo BEGIN | sed 's/.*/plugin-vimcompletesme-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vimcompletesme | sed 's/.*/plugin-vimcompletesme-update: &/'
	@echo END | sed 's/.*/plugin-vimcompletesme-update: &/'

plugin-vimwiki-clean: 
	@echo BEGIN | sed 's/.*/plugin-vimwiki-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vimwiki | sed 's/.*/plugin-vimwiki-clean: &/'
	@echo END | sed 's/.*/plugin-vimwiki-clean: &/'

plugin-vimwiki-install: plugin-vimwiki-clean
	@echo BEGIN | sed 's/.*/plugin-vimwiki-install: &/'
	@hg clone -y git://github.com/vimwiki/vimwiki.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vimwiki | sed 's/.*/plugin-vimwiki-install: &/'
	@echo END | sed 's/.*/plugin-vimwiki-install: &/'

plugin-vimwiki-update: 
	@echo BEGIN | sed 's/.*/plugin-vimwiki-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vimwiki | sed 's/.*/plugin-vimwiki-update: &/'
	@echo END | sed 's/.*/plugin-vimwiki-update: &/'

plugin-vinegar-clean: 
	@echo BEGIN | sed 's/.*/plugin-vinegar-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vinegar | sed 's/.*/plugin-vinegar-clean: &/'
	@echo END | sed 's/.*/plugin-vinegar-clean: &/'

plugin-vinegar-install: plugin-vinegar-clean
	@echo BEGIN | sed 's/.*/plugin-vinegar-install: &/'
	@hg clone -y git://github.com/tpope/vim-vinegar.git /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vinegar | sed 's/.*/plugin-vinegar-install: &/'
	@echo END | sed 's/.*/plugin-vinegar-install: &/'

plugin-vinegar-update: 
	@echo BEGIN | sed 's/.*/plugin-vinegar-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/plugin-vinegar | sed 's/.*/plugin-vinegar-update: &/'
	@echo END | sed 's/.*/plugin-vinegar-update: &/'

syntax-php-clean: 
	@echo BEGIN | sed 's/.*/syntax-php-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/syntax-php | sed 's/.*/syntax-php-clean: &/'
	@echo END | sed 's/.*/syntax-php-clean: &/'

syntax-php-install: syntax-php-clean
	@echo BEGIN | sed 's/.*/syntax-php-install: &/'
	@hg clone -y git://github.com/StanAngeloff/php.vim.git /Users/jeffrey04/Projects/vim-manager/default-bundles/syntax-php | sed 's/.*/syntax-php-install: &/'
	@echo END | sed 's/.*/syntax-php-install: &/'

syntax-php-update: 
	@echo BEGIN | sed 's/.*/syntax-php-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/syntax-php | sed 's/.*/syntax-php-update: &/'
	@echo END | sed 's/.*/syntax-php-update: &/'

theme-gruvbox-clean: 
	@echo BEGIN | sed 's/.*/theme-gruvbox-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/theme-gruvbox | sed 's/.*/theme-gruvbox-clean: &/'
	@echo END | sed 's/.*/theme-gruvbox-clean: &/'

theme-gruvbox-install: theme-gruvbox-clean
	@echo BEGIN | sed 's/.*/theme-gruvbox-install: &/'
	@hg clone -y git://github.com/morhetz/gruvbox.git /Users/jeffrey04/Projects/vim-manager/default-bundles/theme-gruvbox | sed 's/.*/theme-gruvbox-install: &/'
	@echo END | sed 's/.*/theme-gruvbox-install: &/'

theme-gruvbox-update: 
	@echo BEGIN | sed 's/.*/theme-gruvbox-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/theme-gruvbox | sed 's/.*/theme-gruvbox-update: &/'
	@echo END | sed 's/.*/theme-gruvbox-update: &/'

theme-solarized-clean: 
	@echo BEGIN | sed 's/.*/theme-solarized-clean: &/'
	@rm -rf /Users/jeffrey04/Projects/vim-manager/default-bundles/theme-solarized | sed 's/.*/theme-solarized-clean: &/'
	@echo END | sed 's/.*/theme-solarized-clean: &/'

theme-solarized-install: theme-solarized-clean
	@echo BEGIN | sed 's/.*/theme-solarized-install: &/'
	@hg clone -y git://github.com/altercation/vim-colors-solarized.git /Users/jeffrey04/Projects/vim-manager/default-bundles/theme-solarized | sed 's/.*/theme-solarized-install: &/'
	@echo END | sed 's/.*/theme-solarized-install: &/'

theme-solarized-update: 
	@echo BEGIN | sed 's/.*/theme-solarized-update: &/'
	@hg pull -y -u -R /Users/jeffrey04/Projects/vim-manager/default-bundles/theme-solarized | sed 's/.*/theme-solarized-update: &/'
	@echo END | sed 's/.*/theme-solarized-update: &/'

clean: pathogen-clean clean-vim clean-vimrc
	@echo BEGIN | sed 's/.*/clean: &/'
	@echo END | sed 's/.*/clean: &/'

clean-vim: 
	@echo BEGIN | sed 's/.*/clean-vim: &/'
	@rm -rf /Users/jeffrey04/.vim | sed 's/.*/clean-vim: &/'
	@echo END | sed 's/.*/clean-vim: &/'

clean-vimrc: 
	@echo BEGIN | sed 's/.*/clean-vimrc: &/'
	@rm -rf /Users/jeffrey04/.vimrc | sed 's/.*/clean-vimrc: &/'
	@echo END | sed 's/.*/clean-vimrc: &/'

update: pathogen-update filetype-clojure-update filetype-go-update filetype-javascript-update filetype-json-update filetype-latex-update filetype-lisp-update filetype-puppet-update filetype-qml-update filetype-ruby-update indent-php-update indent-python-update omnicomplete-php-update plugin-airline-update plugin-autopep8-update plugin-clojure-highlight-update plugin-css-color-update plugin-delimitmate-update plugin-ctrlp-update plugin-fencview-update plugin-fireplace-update plugin-golden-ratio-update plugin-isort-update plugin-l9-update plugin-neocomplete-update plugin-niji-update plugin-php-namespace-update plugin-rainbow-csv-update plugin-vawa-update plugin-vimcompletesme-update plugin-vimwiki-update plugin-vinegar-update syntax-php-update theme-gruvbox-update theme-solarized-update
	@echo BEGIN | sed 's/.*/update: &/'
	@echo END | sed 's/.*/update: &/'

.vim: 
	@echo BEGIN | sed 's/.*/.vim: &/'
	@mkdir /Users/jeffrey04/.vim | sed 's/.*/.vim: &/'
	@echo END | sed 's/.*/.vim: &/'

.vimrc: 
	@echo BEGIN | sed 's/.*/.vimrc: &/'
	@ln -s /Users/jeffrey04/Projects/vim-manager/vim-config /Users/jeffrey04/.vimrc | sed 's/.*/.vimrc: &/'
	@echo END | sed 's/.*/.vimrc: &/'

