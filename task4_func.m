function task4_func(dicom)
    dicomdetail = dicominfo(dicom);
    disp('DICOM Metadata:');
    disp('-----------------');
    disp('Patient Data:');
    disp(['Name of Patient: ', dicomdetail.PatientName.FamilyName]);
    disp(['ID of Patient: ', dicomdetail.PatientID]);
    disp(['Birthdate of Patient: ', dicomdetail.PatientBirthDate]);
    disp(['Gender of Patient: ', dicomdetail.PatientSex]);
    disp([' Weight of Patient: ', dicomdetail.PatientWeight]);
    disp('-----------------');
    disp('Acquisition Parameters:');
    disp(['Modality: ', dicomdetail.Modality]);
    disp(['Manufacturer: ', dicomdetail.Manufacturer]);
    disp(['Image Size: ', num2str(dicomdetail.Rows), ' x ', num2str(dicomdetail.Columns)]);
    disp('-----------------')   
    disp('Study Information:');
    disp(['ID of Study: ', dicomdetail.StudyID]);
    disp(['Description of Study: ', dicomdetail.StudyDescription]);
    disp(['Date of Study: ', dicomdetail.StudyDate]);
    disp(['Time of Study: ', dicomdetail.StudyTime]);
    disp(['Instance of Study: ', dicomdetail.StudyInstanceUID]);
    disp('-----------------')  
    disp('Other Information')
    disp(['MR Acquisition Type: ', dicomdetail.MRAcquisitionType]);
    disp(['Imaged Nucleus: ', dicomdetail.ImagedNucleus]);
end
% Write task4_func('MRBRAIN.DCM') to Command Window to run