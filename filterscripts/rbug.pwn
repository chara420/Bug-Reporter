#include <a_samp>
#include <zcmd>
#include <sscanf>
#define SCM SendClientMessage
#define PATH "Server/logs/rbugs.log"//Localización de donde se guardan los reportes
CMD:rbug(playerid, params[])
{
  new bug[256], pname[30], string[256];
  if(!sscanf(params, "s[256]", bug))
  {
     SCM(playerid, -1, "Bug Correctamente reportado");
     GetPlayerName(playerid, pname, 30);
     format(string, 256, "Nombre %s[ID %d][Bug]: %s\r\n", pname, playerid, bug);
     Log(PATH, string);
  }
  else return SCM(playerid,-1,"/rbug [Breve descripción del bug]");
  return 1;
}
Log(sz_fileName[], sz_input[])
{
	if(fexist(sz_fileName))
	{
		new sz_logEntry[156], i_dateTime[2][3], File: fileHandle = fopen(sz_fileName, io_append);
		gettime(i_dateTime[0][0], i_dateTime[0][1], i_dateTime[0][2]);
		getdate(i_dateTime[1][0], i_dateTime[1][1], i_dateTime[1][2]);
		format(sz_logEntry, sizeof(sz_logEntry), "[%i/%i/%i - %i:%i:%i] %s\r\n", i_dateTime[1][0], i_dateTime[1][1], i_dateTime[1][2], i_dateTime[0][0], i_dateTime[0][1], i_dateTime[0][2], sz_input);
		fwrite(fileHandle, sz_logEntry);
		return fclose(fileHandle);
	}
	else
	{
		new string[128];
		format(string, 128, "El archivo de reportes de bugs no está creado en %s , Por favor de crear", PATH);
		print(string);
	}
	return 1;
}