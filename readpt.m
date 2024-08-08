function x = readpt(pt)
% Patient information is contained in a struct 'pt', which is passed into
% the function.

% display basic patient info
fprintf('Processing patient %s, aged %d, of gender %s: \n', pt.name, pt.age, pt.gender)

% first, if the patient is a minor, exlude. This, an if statement, is an
% example of a control flow structure.
if pt.age < 18
    fprintf('The patient is %d years below the required age. \n', 18-pt.age)
    return
end

disp('reached here?')

% terminate and end here
