# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Nendo is a dialect of Lisp written in Ruby. It compiles Nendo source files (.nnd) to bytecode (.nndc) and provides a comprehensive standard library with SRFI (Scheme Request for Implementation) support.

## Essential Development Commands

### Building and Compilation
```bash
# Compile all Nendo source files to bytecode
rake compile

# Build the gem package
rake build

# Clean compiled files
rake clean_nndc
```

### Testing
```bash
# Run all tests (RSpec + Nendo tests)
rake

# Run only RSpec tests and SRFI-1 test
rake test1

# Run library tests (textlib, util, json, yaml, srfi tests)
rake test2

# Run match and combinations tests (CPU intensive)
rake test3

# Run a single RSpec test
rspec -I ./lib spec/nendo_spec.rb

# Run a single Nendo test
ruby -I ./lib ./bin/nendo spec/srfi-1-test.nnd
```

### Development Tools
```bash
# Start interactive REPL
rake repl

# Run benchmarks
rake bench

# Format for testing: outputs to test.log and test.record
echo "" > test.log
ruby -I ./lib ./bin/nendo spec/your-test.nnd >> test.log
```

## Architecture Overview

### Core Implementation Structure
The Ruby implementation is split into modular components in `lib/nendo/ruby/`:
- `types.rb` - Core type system and data structures
- `reader.rb` - S-expression parser and reader macros
- `evaluator.rb` - Expression evaluation engine
- `builtin_functions.rb` - Built-in Lisp functions
- `core.rb` - Main interpreter loop and environment management
- `printer.rb` - Output formatting and pretty-printing
- `optimized_func.rb` - Performance-critical optimizations

### Compilation System
Nendo uses a bytecode compilation approach:
- Source files (`.nnd`) are compiled to bytecode (`.nndc`)
- Debug versions (`.nndc.nc`) include additional debugging information
- Compilation is done via `nendo -c` command
- The evaluator can run both source and compiled code

### Module and Library System
Libraries are organized under `lib/nendo/`:
- SRFI implementations: `srfi-1.nnd`, `srfi-2.nnd`, `srfi-9.nnd`, `srfi-26.nnd`
- Utilities: `util/list.nnd`, `util/match.nnd`, `util/record.nnd`, `util/combinations.nnd`
- Text processing: `text/html-lite.nnd`, `text/tree.nnd`
- Data formats: `rfc/json.nnd`, `rfc/yaml.nnd`
- Debug support: `debug/null.nnd`, `debug/syslog.nnd`

### Testing Architecture
The project uses a dual testing approach:
1. **RSpec tests** (`spec/*_spec.rb`) - Test Ruby implementation internals
2. **Nendo tests** (`spec/*-test.nnd`) - Test Nendo language features and libraries

Test results are aggregated in `test.record` file, and the build expects "0 failed" for success.

### Version Management
Version is managed in `VERSION.yml` and automatically injected into `lib/nendo/ruby/core.rb` during compilation at the `##NENDO-VERSION` marker.

## Key Development Patterns

### Adding New Built-in Functions
Built-in functions are defined in `lib/nendo/ruby/builtin_functions.rb` using the `define_builtin_function` method. They integrate directly with the Ruby runtime.

### Creating New Libraries
1. Write the library in `lib/nendo/your-library.nnd`
2. Add compilation entry in `Rakefile` (around line 105)
3. Add corresponding test in `spec/your-library-test.nnd`
4. Update `lib/nendo.rb` if it needs to be auto-loaded

### Performance Optimization
Critical functions can be optimized by:
1. Adding Ruby implementations in `optimized_func.rb`
2. Using the bytecode compiler for frequently called code
3. Leveraging Ruby's native data structures where appropriate

## Environment Variables

- `NENDO_CLEAN_TEST=1` - Skip CPU-intensive test3 and clean compiled files before testing
- Standard Ruby load path applies via `-I` flag