# See the full tutorial at
# https://ropenscilabs.github.io/drake-manual/mtcars.html.

source("R/packages.R")  # Load all the packages you need.
source("R/functions.R") # Load all the functions into your environment.
source("R/plan.R")      # Build your workflow plan data frame.

# Now, your functions and workflow plan should be in your environment.
ls()

# Optionally plot the graph of your workflow.
# config <- drake_config(my_plan) # nolint
# vis_drake_graph(config)         # nolint

# Now it is time to actually run your project.
make(my_plan) # Or make(my_plan, jobs = 2), etc.

# Now, if you make(whole_plan) again, no work will be done
# because the results are already up to date.
# But change the code and some targets will rebuild.

# Read the output report.md file
# for an overview of the project and the results.
