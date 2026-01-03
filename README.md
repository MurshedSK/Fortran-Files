# Numerical Methods using Fortran

This repository contains a collection of Fortran programs implementing fundamental numerical methods. These codes were developed during my B.Sc. in Physics to solve mathematical problems.

## 📂 Repository Contents

The codes are organized by numerical method:

| Category | Description |
|----------|-------------|
| **Roots of Equations** | Implementation of Bisection, Newton-Raphson, and Secant methods. | 
| **Numerical Integration** | Trapezoidal rule, Simpson's 1/3 and 3/8 rules for function integration. | 
| **Differential Equations** | Solving ODEs using Euler's Method and Runge-Kutta (RK4). | 


## 🛠️ Compilation & Usage

These programs can be compiled using the GNU Fortran compiler (`gfortran`).

**Prerequisites:**
- `gfortran` (GCC)

**How to compile and run a script:**
```bash
# 1. Compile the code
gfortran filename.f90 -o output_name

# 2. Run the executable
./output_name
