<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>SHARE Curation Associates Directory</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            @import 'https://fonts.googleapis.com/css?family=Cousine';
            body{
              font-family:
            'Cousine',Menlo,Consolas,monospace;
            font-size:14px;
            line-height:22px;
            color:  #aaa;
            padding:10px;
              margin:0 0 0 200px;
            word-wrap:break-word;
            -webkit-text-size-adjust:none;
            max-width:600px;
            }

            h1{
              font-size:inherit;
              font-weight: normal;
              color: black;
            }

            h1,p{
              display:inline;
              color:black;
            }

            h1,a{
              border-bottom:4px solid black;
              padding:6px 0 2px;

            }
            a {
              color:#38E;
              text-decoration:none;
              border-color:#38E;
            }
            a:hover{
              background:black;
            }

            .br{
              word-spacing:-5px;
            }

            .lk:link,.lk:visited{
              color: #aaa;
              border-color: transparent;
            }

            .lk:hover{
              border-color:#aaa;
            }

            /* */

            h1,h2,h3,p {
              display:table;
              padding:0;
            }

            h1{
              border-bottom:none;
              margin:0;
            }
            section{
            margin:0 0 2em;
            }
            h2,h3
            {
            font-size:inherit;
            font-weight:normal;
            color:black;
            border-bottom:1px solid black;
            }

            h2{
              border-bottom-width:4px;
            }
            h2,h3,p{
              margin:0 0 1em;
            }
            header{
              position:absolute;margin:0 0 0 -200px;
            }

            header>p{
              margin:0;
            }
            @media screen and (max-width:700px){body{margin:0;}header{position:static;margin:0 0 2em;}}

            .entries {
              padding-left: 80px;
            }

            .entries a {
              border-bottom: none;
            }
        </style>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <header>
        <h1>SHARE Curation Associates</h1>
        <h1>Directory</h1>
        <p><a href="https://github.com/CenterForOpenScience/SHARE">SHARE @ GitHub</a></p>
        </header>

        <div class="entries">
          <section>
          % for datum in data:
            ${render_entry(datum)}
          % endfor
          </section>
        </div>
    </body>
</html>


<%def name="render_entry(data)">
  <h2>${data['last']}, ${data['first']}</h2>
  % if data.get('osf'):
    <p>Website: <a href="${data['personal']}">${data['personal']}</a></p>
  % endif

  % if data.get('email'):
    <p>Email: <a href="mailto:${data['email']}">${data['email']}</a></p>
  % endif
  % if data.get('twitter'):
    <p>Twitter: <a href="https://twitter.com/${data['twitter']}/">@${data['twitter']}</a></p>
  % endif

  % if data.get('github'):
    <p>GitHub: <a href="https://github.com/${data['github']}/">${data['github']}</a></p>
  % endif

  % if data.get('osf'):
    <p>OSF ID: <a href="https://osf.io/${data['osf']}/">${data['osf']}</a></p>
  % endif

</%def>