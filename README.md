# NumericAnalysis

A comprehensive MATLAB-based numerical analysis repository containing educational materials and practical implementations for learning numerical computing methods, matrix operations, and mathematical analysis techniques.

## Project Overview

This repository serves as a structured learning resource for numerical analysis using MATLAB. It contains weekly modules that progressively build knowledge in computational mathematics, from basic matrix operations to advanced statistical analysis and control structures. The content is designed for students and professionals looking to master MATLAB programming for numerical computing applications.

### Course Structure

The repository is organized into five weekly modules, each focusing on specific aspects of numerical analysis:

#### Week 1: Fundamentals (`birinci_hafta.m`)
- Matrix operations (addition, subtraction, multiplication)
- Basic MATLAB syntax and data types
- Determinant calculations
- Matrix inversion techniques
- String operations and variable handling

#### Week 2: Mathematical Functions (`ikinci_hafta.m`)
- Trigonometric functions (sin, cos, tan) in radians and degrees
- Hyperbolic functions (sinh, cosh, tanh)
- Complex number operations and manipulations
- Basic plotting and visualization commands
- File system navigation in MATLAB

#### Week 3: Advanced Matrix Operations (`ucuncu_hafta.m`)
- Vector creation and manipulation
- Matrix indexing and element access
- Eigenvalue computations
- Sparse matrix representations
- Multi-dimensional matrix structures
- Linear algebra fundamentals

#### Week 4: Analysis and Visualization (`dorduncu_hafta.m`)
- Periodic function analysis
- Polynomial operations and representations
- Statistical analysis tools
- Histogram generation and data visualization
- Custom function creation
- Mesh grid operations for 3D plotting

#### Week 5: Control Structures and Logic (`besinci_hafta.m`)
- Logical operations and boolean algebra
- Conditional statements (if-else structures)
- Loop constructs (for loops)
- Function evaluation techniques
- Matrix searching and filtering
- Performance measurement with tic-toc

## Getting Started

### Prerequisites

Before using this repository, ensure you have:

1. **MATLAB Installation**
   - MATLAB R2018a or later recommended
   - Required toolboxes: Statistics and Machine Learning Toolbox (optional)
   
2. **Basic Mathematical Knowledge**
   - Linear algebra fundamentals
   - Basic calculus concepts
   - Elementary statistics

3. **Programming Background**
   - Basic understanding of programming concepts
   - Familiarity with mathematical notation

### Installation and Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/BGirginn/NumericAnalysis.git
   cd NumericAnalysis
   ```

2. **Open MATLAB:**
   - Launch MATLAB on your system
   - Navigate to the repository directory
   - Add the folder to your MATLAB path:
     ```matlab
     addpath(genpath(pwd))
     ```

3. **Verify installation:**
   ```matlab
   % Test basic functionality
   x = [1, 2, 3, 4, 5];
   y = x.^2;
   plot(x, y);
   title('Basic MATLAB Test');
   ```

### Usage

1. **Start with Week 1:**
   ```matlab
   % Open and run the first week's content
   open('birinci_hafta.m')
   ```

2. **Run code sections:**
   - Use MATLAB's section break feature (`%%`) to run code blocks
   - Execute individual lines or sections to understand each concept
   - Experiment with parameters to see how results change

3. **Progress through modules:**
   - Complete each week in sequence
   - Practice with the provided examples
   - Modify code to explore different scenarios

## Content Details

### Mathematical Topics Covered

- **Linear Algebra:** Matrix operations, eigenvalues, determinants
- **Numerical Methods:** Function evaluation, interpolation, statistical analysis
- **Data Visualization:** 2D/3D plotting, histograms, mesh grids
- **Programming Concepts:** Functions, loops, conditionals, logical operations

### Key MATLAB Functions Demonstrated

- Matrix operations: `det()`, `inv()`, `eig()`, `rank()`
- Statistical functions: `mean()`, `std()`, `var()`, `hist()`
- Plotting functions: `plot()`, `meshgrid()`, `surf()`
- Logical operations: `find()`, `any()`, `all()`
- Data generation: `rand()`, `randn()`, `linspace()`

## Contributing

We welcome contributions to improve and expand this educational resource!

### How to Contribute

1. **Fork the repository**
   ```bash
   git fork https://github.com/BGirginn/NumericAnalysis.git
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/new-numerical-method
   ```

3. **Make your changes**
   - Add new numerical methods or algorithms
   - Improve existing code documentation
   - Fix bugs or enhance performance
   - Add new examples or exercises

4. **Follow coding standards**
   - Use clear, descriptive variable names
   - Add comprehensive comments in English
   - Include example usage for new functions
   - Ensure code is well-formatted and readable

5. **Submit a pull request**
   - Provide a clear description of changes
   - Include test cases for new functionality
   - Reference any related issues

### Contribution Guidelines

- **Code Quality:** All MATLAB code should be well-commented and follow best practices
- **Documentation:** Update this README if adding new modules or significant features
- **Testing:** Verify that all code runs without errors in MATLAB
- **Educational Value:** Ensure contributions enhance the learning experience

### Areas for Contribution

- Additional numerical methods (interpolation, integration, differential equations)
- More advanced statistical analysis techniques
- Interactive examples and visualizations
- Performance optimization examples
- Real-world application case studies
- Additional exercises and problem sets

## License

This project is created for educational purposes. Please respect academic integrity when using this material for coursework.

## Contact

For questions, suggestions, or issues, please:
- Open an issue on GitHub
- Submit a pull request with improvements
- Contact the repository maintainer through GitHub

---

*This repository is designed to support learning numerical analysis through hands-on MATLAB programming. Each module builds upon previous knowledge, creating a comprehensive foundation in computational mathematics.*