dotfiles
========

My most important config files (tmux, vim, ...)


Your .bashrc
------------

For bash config add this to your .bashrc:

<pre>
if [ -f ~/.bash_custom ]; then
	. ~/.bash_custom
fi
</pre>


Powerline-Support
-----------------

The scripts assume that Powerline from https://github.com/Lokaltog/powerline.git
is installed in ~/Development/github/powerline. So you have to

<pre>
git clone https://github.com/Lokaltog/powerline.git
</pre>

before anything works.

