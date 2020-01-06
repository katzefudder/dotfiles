dotfiles
========

My most important config files (tmux, vim, ...)


Your .bashrc
------------

For bash config add this to your .bashrc or .zshrc:

<pre>
if [ -f ~/.bash_custom ]; then
	autoload bashcompinit
	bashcompinit
	. ~/.bash_custom
fi
</pre>
