# MINLPLibJuMP
Dev: [![Build Status](https://travis-ci.org/lanl-ansi/MINLPLibJuMP.jl.svg?branch=master)](https://travis-ci.org/lanl-ansi/MINLPLibJuMP.jl) [![Docs](https://img.shields.io/badge/docs-latest-blue.svg)](https://lanl-ansi.github.io/MINLPLibJuMP.jl/latest)

We notice that most of the existing MINLP problems are stored in `.gms`,`.nl`,`.mod` format for different commercial modeling languages.
The `Julia` optimization community lacks the support of parsing these inputs.
This is an instance library of Mixed-Integer Nonlinear and Nonlinear Programs in [JuMP](https://github.com/JuliaOpt/JuMP.jl) model format.
With MINLPLibJuMP.jl, you can use

* Use instances to benchmark solvers and/or perform experiments easily

* View rich meta information of each instance to assist your analyses and experiments

* Build and publish your own reference libraries with target characteristics

## Included Libraries
For more details of the libraries included in this package, please see [documentation](https://lanl-ansi.github.io/MINLPLibJuMP.jl/latest/).

## Installation
To install, at your `Julia` command prompt,
```
Pkg.clone("https://github.com/lanl-ansi/MINLPLibJuMP.jl.git")
```

## Fetching a model
Fetch a instance by its `libname/name` just like the following,
```
using MINLPLibJuMP
m = fetch_model("minlp2/blend029")
```
or
```
using MINLPLibJuMP
m = fetch_model("minlp2", "blend029")
```

For special built-in model that requires additional inputs,
```
using MINLPLibJuMP
m = fetch_model("special", "multiKND", options=Dict(:K=>3, :N=>3, :D=>1))
```

The above scrip initialize an optimization [JuMP](https://github.com/JuliaOpt/JuMP.jl) model `multiKND`. The
formulation is controlled with parameter `:K`, `:N`, and `:D`, which yields the
following problem:

```
Max x[1] * x[2] * x[3] + x[3] * x[4] * x[5] + x[5] * x[6] * x[7]
Subject to
 x[1] + x[2] + x[3] <= 3
 x[3] + x[4] + x[5] <= 3
 x[5] + x[6] + x[7] <= 3
 0.1 <= x[i] <= 10 for all i in {1,2,..,6,7}
```

## Viewing instance's meta info
To know a instance better, you can do the following to get a dictionary of meta info.
Note that as we continue to develop and test. More verified attributes will be added to the meta.
```
julia> meta = MINLPLibJuMP.fetch_meta("minlp2", "blend029")
Dict{String,Any} with 18 entries:
  "NINTVARS"   => 0
  "NLINCONS"   => 202
  "OBJBOUND"   => nothing
  "NAME"       => "blend029"
  "OBJVAL"     => nothing
  "LIBRARY"    => "minlp2"
  "NCONS"      => 214
  "NVARS"      => 103
  "OBJTYPE"    => "linear"
  "NLOPERATOR" => Any["mul"]
  "LOAD"       => 1.7414
  "OBJSENSE"   => "Max"
  "NSDPCONS"   => 0
  "NNLCONS"    => 12
  "NBINVARS"   => 36
  "NQUADCONS"  => 0
  "NSOSCONS"   => 0
```


## Build your own instance library
Currently, MINLPLibJuMP.jl contains over 6000 instances. Experimenting with all
of them can be computationally heavy and risky. For research projects, the scope is usually
limited to a specific type of problems. Hence, it is necessary to construct you very own
library for your very own experiments. Below, we write a small `.jl` script that will generate a
user instance library (without actually copying the problem) called `USERLib` that collect all instances with
`exp` function. The directory will be created with name `instance/USERLib`.

```
using MINLPLibJuMP

# Collect target problem from these libraries
for lib in ["bcp", "global", "ibm", "inf", "minlp", "minlp2"]
    NAMES = MINLPLibJuMP.fetch_names(lib)   # Fetch a list of instance names
    for i in NAMES
        Meta = MINLPLibJuMP.fetch_meta(lib, i)  # Fetch instance meta
        isempty(Meta) && continue
        !haskey(Meta, "NLOPERATOR") && continue
        if "exp" in M["NLOPERATOR"][1]
            MINLPLibJuMP.add_to_lib("USERLib", lib, i)  # Collect instance
        else
            continue
        end
    end
end
println(MINLPLibJuMP.fetch_names("USERLib"))
```
