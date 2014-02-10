Structure of project
------

Is working alright. Mixing your frontend assets and your backend server has never sat well with me. They have different build processes and should not be combined.

Plus, you can't deploy rails without a web server anyway, so I'm developing that way.


- The "nginx" folder has the config for nginx. It's up to you to run it with

    sudo nginx -c path/to/your/conf

- The rails-app as the rails app...
- media is linked to at /media at the moment.
