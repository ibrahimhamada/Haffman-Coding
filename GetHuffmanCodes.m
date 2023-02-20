%% This funciton takes the character and its probability to find the codes for each symbol.

function dictionary = GetHuffmanCodes(chars ,probability )
%Intialize empty cell arrays to have code words and probability
for i = 1:length(probability)   
    codewords{i} = '' ; 
    character{i} = i;
end

% Iterating to find codes
while (probability < 1)
    [~, arranged] = sort(probability); % Sorting the probabilities.
    % Indexing the least two probabilities and their char values.
    least_prop_index = arranged(1); 
    next_least_prop_index = arranged(2);
    least_char = character{least_prop_index};
    next_least_char  = character{next_least_prop_index};
    % Probability to be summed
    least_prop = probability(least_prop_index);
    next_least_prop  = probability(next_least_prop_index);
    
    merged_set = [least_char, next_least_char];  
    new_prob   = least_prop + next_least_prop; 
    character(arranged(1:2)) = '';  % Update symbol sets
    probability(arranged(1:2))   = '';
    character = [character merged_set];
    probability   = [probability new_prob];
    % Get the updated codeword.
    codewords = UpdateCodeWord(codewords,least_char,'1');
    codewords = UpdateCodeWord(codewords,next_least_char,'0');
end

dictionary.symbol = chars ; dictionary.code = codewords;
    
end