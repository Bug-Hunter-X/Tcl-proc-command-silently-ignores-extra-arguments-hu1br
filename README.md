# Tcl proc command silently ignores extra arguments

This repository demonstrates a subtle bug in Tcl where the `proc` command silently ignores extra arguments passed to a procedure. This can lead to unexpected behavior and make debugging more challenging.

## Bug Description

The `badproc` procedure in `bug.tcl` is defined to accept a single argument (`x`). However, when called with multiple arguments (`a b c`), it only processes the first argument (`a`). The extra arguments (`b` and `c`) are silently ignored, without any error or warning.

## Solution

The `bugSolution.tcl` file shows how to explicitly check the number of arguments using `llength` and generate an error if the wrong number is provided. This improves the robustness of the code by making unexpected extra arguments more detectable.