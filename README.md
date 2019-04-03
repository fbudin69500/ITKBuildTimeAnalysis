Analyze ITK build time
======================

Install Jupyter
---------------

mkvirtualenv itk_analyze_build_time
pip install jupyter

Analyze
-------

* Start Jupyter notebook

jupyter notebook

Reproduce
---------

* Apply to `CMakeLists.txt` in ITK build tree

cp time_build_commands.patch $ITK_SOURCE_DIR
cd $ITK_SOURCE_DIR
git apply time_build_commands.patch

* Build ITK on one core of your machine and save log to file

$ANALYZE_BUILD_DIME_DIR/configure_build_log_itk.sh

* Log file `/tmp/mylog` will be created (see `configure_build_log_itk.sh`).

Note
----

Parallel compilation (make -j) mostly work. There can be a few targets that
are intertwined in the log file (2 targets in the example that is included in the repository).
These targets are just ignored when analyzing the total (sum) times.
