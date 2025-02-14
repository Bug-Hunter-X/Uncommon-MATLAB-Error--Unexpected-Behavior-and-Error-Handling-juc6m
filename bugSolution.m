function result = myFunction(input)
  % Improved function with robust error handling
  if input < 0
    error('Input must be non-negative');
  end
  if input == 5
    warning('Input value of 5 will lead to division by zero; result will be Inf.');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % Improved calculation with division-by-zero check
  if x == 5
    output = Inf; % Handle division by zero explicitly
  else
    output = x / (x - 5);
  end
end