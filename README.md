# CocoaHeads Atlanta - Unit Test Lab

The repo for the unit test lab is set up in such a way that each branch is a new "idea."
It's a bit of SCM spaghetti, but you will focus your git-foo on the stage-one through 
stage-four branches.

* ###BNR-finished

	_This is an idea of how the finished project looks from the [iOS Programming: The Big
	Nerd Ranch Guide 3rd Ed.][4] book. This is only here so you can check out how the app
	might work at the end of it all_
* ###master

	_Make a pull request ([what that means and how to do that here][1]), and I'll merge
	your code changes into the project!_
* ###stage-one

	_**Model objects:** Some production code has been written for our model objects, but
	not any unit tests. We warmed ourselves up in October's meeting by writing unit
	tests for our two model classes. What else needs to be added to our production
	classes?_
* ###stage-two

	_**View controllers:** Let's look at writing some unit tests for view controllers
	written primarily in code..._
* ###stage-three

	_**Refactoring view controllers:** Let's refactor that code into the storyboards..._
* ###stage-four
	_**More view controller practice:** Write unit tests for the secondary detail view
	controller_
* ###stage-five

	_**Challenges:**_
	- _Migrate the model objects to Core Data._
	- _Bifurcate the app into iPhone and iPad versions._
	- _Change the item detail view controller to subclass from UITableViewController._
	- _Add in the ability to use UIImagePickerViewController._



The repository was designed for you to:

1. Fork the project on Github and clone it to your local machine ([full instructions
here][2])
3. Create your own "topic" branches from each of the "stage" branches

	`git checkout stage-one -b my-local-stage-one`
4. Commit your unit tests and production code additions
5. Send a pull requests to have your code integrated back into the master branch!
6. Use [Glassboard][3] (invite code - pvkov) or create a [Github issue][5] to discuss any
pieces of the project

[1]: https://help.github.com/articles/using-pull-requests "Pull Requests"
[2]: https://help.github.com/articles/fork-a-repo "Fork a Repo"
[3]: https://app.glassboard.com/ "Glassboard"
[4]: http://www.bignerdranch.com/book/ios_programming_the_big_nerd_ranch_guide_rd_edition_ "Big Nerd Ranch - Books"
[5]: https://github.com/evandelaney/chatl-unit-test-lab/issues "Issues"
