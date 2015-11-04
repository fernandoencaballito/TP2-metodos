%% codigo octave

AUDIO_DIRECTORY="./sounds/";%% directorio en el que estan los archivos de audio.
FILE_PATTERN="*.wav";%%patron para buscar archivos wav



files = readdir (AUDIO_DIRECTORY);

COMPLETE_PATTERN=strcat(AUDIO_DIRECTORY,FILE_PATTERN);
files=glob(COMPLETE_PATTERN);

for i=1:length(files)
	file_name=files(i)
	
	
	[x, fs] = auload(file_in_loadpath(file_name));
	
	x=x(:,1);%% si el audio es estereo (dos canales), se descarta el segundo canal.

%%ACA HACER LO QUE HAGA FALTA CON LOS DATOS DEL ARCHIVO DE AUDIO QUE ESTAN EN X, EN FS frecuencia de muestreo.
	sound(x,fs);%se lo reproduce
	
	
endfor
