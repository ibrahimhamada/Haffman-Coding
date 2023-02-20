%% This function calculates the probabilty of each character in the given messages based on its frequency in the given text file.
%It takes the text message and finds the unique characters.
%It finds the frequency of each symbol and entropy based on the probability.

function [probability, entropy, chars] = GetProbabilityAndEntropy(text)
text_len = length(text);
chars = unique(text);
chars_freq = zeros(1, length(chars));
probability = zeros(1, length(chars));
entropy = 0;
%Iterating over all unique symbols
for i = 1:length(chars)
    chars_freq(i) = length(strfind(text, chars(i)));
    probability(i) = chars_freq(i) / text_len;
    entropy = entropy - probability(i) * log2(probability(i));
end

end