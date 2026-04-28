function googleSpeak(text,lang)
if nargin < 2
    lang = "en";
end
text = char(text);
text = strrep(text,newline,' ');
text = strtrim(text);
maxLen = 160;
chunks = splitTextSmart(text, maxLen);
for i = 1:length(chunks)
    try
        encodedText = urlencode(chunks{i});
        url = "https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&tl=" ...
            + lang + "&q=" + encodedText;
        file = "voice_" + i + ".mp3";
        options = weboptions('Timeout',10);
        websave(file,url,options);
        [y,fs] = audioread(file);
        sound(y,fs)
        pause(length(y)/fs) 
        delete(file)
    catch
        try
            speaker = actxserver('SAPI.SpVoice');
            speaker.Rate = 0;   
            invoke(speaker,'Speak',chunks{i});
        catch
            disp("⚠️ Voice not supported on this system")
        end
    end

end

end
function parts = splitTextSmart(txt, maxLen)
words = strsplit(txt);
parts = {};
current = "";
for i = 1:length(words)
    word = string(words{i});
    if strlength(current + " " + word) <= maxLen
        current = current + " " + word;
    else
        parts{end+1} = strtrim(current);
        current = word;
    end
end
if strlength(current) > 0
    parts{end+1} = strtrim(current);
end
end