%% codigo matlab

AUDIO_DIRECTORY='sounds\';%% directorio en el que estan los archivos de audio.
FILE_PATTERN='*.wav';%%patron para buscar archivos wav

COMPLETE_PATTERN=strcat(AUDIO_DIRECTORY,FILE_PATTERN);

files=dir(COMPLETE_PATTERN);

%files=glob(COMPLETE_PATTERN);

for i=1:length(files)
	file=files(i);
    file_name=strcat(AUDIO_DIRECTORY,file.name)
	
	
	[x, fs] = wavread(file_name);
	
	x=x(:,1);%% si el audio es estereo (dos canales), se descarta el segundo canal.

    %%TRABAJAR CON EL SONIDO EN x.
	sound(x,fs);%se lo reproduce
	
	
end
