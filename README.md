# `emcee` box

Vagrant setup to build a linux box loaded with required packages for the [TISI](https://canvas.bham.ac.uk/courses/11615/pages/session-3-using-an-off-the-shelf-sampler-emcee) session on `emcee`. This includes the following stacks:

* SciPy stack (`IPython` notebook, `matplotlib`, `pandas`, `scipy`...)
* `emcee`.
* `plotutils`.
* `triangle`.

The provission will also clone the example project `galmassproxy`.

## Usage

* Make sure you have installed a recent version of
  [`VirtualBox`](https://www.virtualbox.org/) and
  [`Vagrant`](https://www.vagrantup.com/).
* Clone this repository and navigate into the folder.
* Run `vagrant up`. The first time, this will build the box (so it might take
  a while, depending on connection and power of your machine). Once built, it
  will only take a few seconds to make it boot up.
* At this point, the virtual machine (VM) is running and an IPython notebook server
  is running. You can access it on the host by pointing your browser to
  [http://localhost:8888](http://localhost:8888)
* When you run `vagrant up`, it will also check if your folder has a subfolder
  called `notebooks` and, if not, it will create it. That is where the
  IPython notebook server will start running.
* When you are done with your analysis, `Ctr+C` twice will stop the notebook
  server. Then run `vagrant halt` to stop the VM.
* If you want to get rid of the VM, run `vagrant destroy` and things will
  dissapear as if they'd never happened. That easy.

## License and creadits

This is released under a BSD-type open-source license. 

