**PLEASE MAKE SURE [DOCKER](https://docs.docker.com/installation/#installation) IS INSTALLED!**

Welcome! This is the DelveTo repository. Below you can find some information 
about the folder structure.

* **api:**            contains the core codebase for everything from models, controllers, 
                      policies to services. 

* **assets:**         contains all the website assets such as images, javascript, styles

* **config:**         contains all our configurations files. All our apps in the codebase
                      is reading from this folder to set certain things, like connections,
                      routes, policies and so on.

* **node_modules:**   contains all standard node modules use by our node.js apps This is 
                      populated via the package.json file.

* **scripts:**        contains some very handy shell scripts for things like (re)deploying docker

* **tasks:**          contains the Grunt tasks for things compiling Less, Coffeescript or minification
                      concatenation of the assets 
                
* **views:**          contains all EJS views for rendering dynamic pages


DelveTo can be deployed using docker both locally and to aws. When deploying
locally you can create both development *(port 1337)* & production *(port 80)* containers. 
On aws the environment is set to production. 

* Deploying locally `bash scripts/local.deploy.sh [dev | prod | both]`

* Redeploying locally `bash scripts/local.redeploy.sh [dev | prod | both]`

* Deploying on AWS `bash scripts/aws.redeploy.sh`
