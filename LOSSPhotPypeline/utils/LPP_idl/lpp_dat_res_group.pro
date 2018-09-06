pro lpp_dat_res_group,datafile,outst,outfile=outfile

if n_params() eq 0 then begin
  print,'Syntax- LPP_dat_res_group,datafile,outst,outfile=outfile'
  return
endif

lpp_dat_res_format,datafile,photst
ind=where(photst.emag le 10.0,fb)
if fb lt 0 then begin
  print,'No good data, doing nothing'
  return
endif

photst=photst[ind]

lpp_phot_dat_res_group,photst.time,photst.mag,photst.filter,magerr=photst.emag,outst=outst,outfile=outfile

end
