# Quick CLI runner

A quick (get it?) script to run your [Quick][4] tests on the commandline. 
So you can 🔥 your Xcode projects.

## Installation

You will need [Rome][1] and [xctester][2] already installed to use this.

```shell
$ brew install xctester
$ gem install cocoapods cocoapods-rome
```

Note: this needs Xcode 6.3

## Usage

Build the necessary frameworks when using this for the first time:

```shell
$ pod install --no-integrate --project-directory=vendor
```

Running the tests from the Quick [README][3] looks like this:

```shell
$ ./quick.sh code/*.swift
QuickSpec

TableOfContentsSpec

❌  -[TableOfContentsSpec the__Documentation__directory__has_everything_you_need_to_get_started]
	failed - expected to contain <Organized Tests with Quick Examples and Example Groups>, got <[a]>
	failed - expected to contain <Installing Quick>, got <[a]>
❌  -[TableOfContentsSpec the__Documentation__directory__if_it_doesn_t_have_what_you_re_looking_for__needs_to_be_updated]
	failed - expected to eventually be truthy, got <false>

 Executed 2 tests, with 2 failures (2 unexpected) in 1.008 seconds
```


[1]: https://github.com/neonichu/Rome
[2]: https://github.com/neonichu/xctester
[3]: https://github.com/Quick/Quick/blob/master/README.md
[4]: https://github.com/Quick/Quick
