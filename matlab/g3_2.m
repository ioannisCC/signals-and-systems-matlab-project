import notes_function.*

fs = 8000;     % sampling frequency
dt = 0.1;      % pauses between the signal

symphony = [
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'G '; 'C '; 'D '; 'E ';...
    'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'G#'; 'B '; 'C#'; 'D#'; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'G '; 'C '; 'D '; 'E ';...
    'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'G#'; 'B '; 'C#'; 'D#'; 'E ';...
    'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'G#'; 'B '; 'C#'; 'D#'; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'G '; 'C '; 'D '; 'E ';...
    'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'F#'; 'G#'; 'B '; 'C#'; 'D#'; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E '; 'E ';...
    'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '; 'G '   
];

notes = ['C ';'C#';'D ';'D#';'E ';'F ';'F#';'G ';'G#';'A ';'A#';'B '];

for i = 1:1:length(symphony)
        soundsc(generate_note_waveform(symphony(i,1:end),i*dt,fs,1));
        % the i*dt is the shifting at each iteration
        soundsc(0);
end

for i = 1:1:length(notes)
        soundsc(generate_note_waveform(notes(i,1:end),i*dt,fs,1));
        % the i*dt is the shifting at each iteration
        soundsc(0);
end