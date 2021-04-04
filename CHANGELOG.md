# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### [2.1.1](https://github.com/p6m7g8/p6df-awscdk/compare/v2.1.0...v2.1.1) (2021-04-04)


### Bug Fixes

* **bew:** aws/aws-cdk's ./pack.sh needs dotnet-sdk >= 3.1.0 ([#16](https://github.com/p6m7g8/p6df-awscdk/issues/16)) ([59e80ba](https://github.com/p6m7g8/p6df-awscdk/commit/59e80ba4d193d095bd9bb3ad9697fedfb9cb5561))
* **jsii-srcmak:** chases brew formula move ([#19](https://github.com/p6m7g8/p6df-awscdk/issues/19)) ([188eea1](https://github.com/p6m7g8/p6df-awscdk/commit/188eea19c8128cf64f4b158d63b2f84f693c9b74))


* unused ([#21](https://github.com/p6m7g8/p6df-awscdk/issues/21)) ([dfb622d](https://github.com/p6m7g8/p6df-awscdk/commit/dfb622d24c989c71838be3a5b7dfe8238fbe5de8))
* **link:** remove rendundant symlinks; echo for now ([#20](https://github.com/p6m7g8/p6df-awscdk/issues/20)) ([5292fab](https://github.com/p6m7g8/p6df-awscdk/commit/5292fab89c9bccbafbf8229c6cb7534f7841b546))
* **README:** updates generator ([#18](https://github.com/p6m7g8/p6df-awscdk/issues/18)) ([7ecafe6](https://github.com/p6m7g8/p6df-awscdk/commit/7ecafe6f221ce1810eb4019dc0aef55657febe99))
* Coc -> .github ([d939f32](https://github.com/p6m7g8/p6df-awscdk/commit/d939f327e1dac404b5ffd592ffc31c35d08bcdf1))
* shuffle aliases location ([#17](https://github.com/p6m7g8/p6df-awscdk/issues/17)) ([c417b37](https://github.com/p6m7g8/p6df-awscdk/commit/c417b379aa0845daebe6001fce4f60e0af1bfb24))

## [2.1.0](https://github.com/p6m7g8/p6df-awscdk/compare/v2.0.0...v2.1.0) (2020-12-06)


### Features

* **api:** centralize ::version() ([627a870](https://github.com/p6m7g8/p6df-awscdk/commit/627a870d7fd68e4601d3d78bdc8c489c9a893ea8))
* **community:** adds CODE_OF_CONDUCT ([4bb4059](https://github.com/p6m7g8/p6df-awscdk/commit/4bb405915e4956299633e5b8595c0e6dfab8140e))
* **github:** adds ISSUE_TEMPLATEs ([f23929e](https://github.com/p6m7g8/p6df-awscdk/commit/f23929e27df6486b05008cbf267e6a81131e6498))
* **langs:** split aws-cdk build out, it takes forever; depend on aws/aws-cdk ([#6](https://github.com/p6m7g8/p6df-awscdk/issues/6)) ([e6c0276](https://github.com/p6m7g8/p6df-awscdk/commit/e6c0276db35e6c2947559b2b19292bc1a7d3cde2))


### Bug Fixes

* **brew:** cask -> --cask ([#15](https://github.com/p6m7g8/p6df-awscdk/issues/15)) ([c020f5b](https://github.com/p6m7g8/p6df-awscdk/commit/c020f5b23d9327dcd917f041b78bc99caad2be48))


* **community:** rely on the .github/ in the org ([#13](https://github.com/p6m7g8/p6df-awscdk/issues/13)) ([3c2ed8d](https://github.com/p6m7g8/p6df-awscdk/commit/3c2ed8d6958faabc8d9f52559acd293720670dc3))
* **docs:** fixes whitespace ([30897d9](https://github.com/p6m7g8/p6df-awscdk/commit/30897d992e9100b14084a7c3b3a2df96b65201e5))
* **README:** fixes module expansion, adds CodeCov and Synk badges ([#14](https://github.com/p6m7g8/p6df-awscdk/issues/14)) ([a444351](https://github.com/p6m7g8/p6df-awscdk/commit/a444351e9a3939342be585e2069dac24425c413e))
* **README:** updates to template v2.0 ([7472e3b](https://github.com/p6m7g8/p6df-awscdk/commit/7472e3b9399b88f0357aa92b537e737953e61e3c))
* **semantic:** no longer needed, defaults are fine ([1be5541](https://github.com/p6m7g8/p6df-awscdk/commit/1be5541478d8a660ede78c024a981712aab726c8))

## [2.0.0](https://github.com/p6m7g8/p6df-awscdk/compare/v1.0.1...v2.0.0) (2020-10-11)


### Features

* **aliases:** adds aws-cdk aliases ([#1](https://github.com/p6m7g8/p6df-awscdk/issues/1)) ([3f50217](https://github.com/p6m7g8/p6df-awscdk/commit/3f50217a31b8bbc3fcf2420e9616e8630270a7fc))
* **api:** depends, le prompt ([#4](https://github.com/p6m7g8/p6df-awscdk/issues/4)) ([c48054a](https://github.com/p6m7g8/p6df-awscdk/commit/c48054a703af132c3aebf90c6c5efd0848d527ba))
* **api:** flush out the functionality ([#2](https://github.com/p6m7g8/p6df-awscdk/issues/2)) ([0f3da4a](https://github.com/p6m7g8/p6df-awscdk/commit/0f3da4a8ae6eb1b36bf941b40d7ccc90f443f539))
* **deps:** plop dotnet-sdk here until we get a p6df-dotnet ([#3](https://github.com/p6m7g8/p6df-awscdk/issues/3)) ([8a1d53e](https://github.com/p6m7g8/p6df-awscdk/commit/8a1d53e4b4fd3682fa49bc63f69b1aa72034e08b))

### 1.0.1 (2020-09-20)
