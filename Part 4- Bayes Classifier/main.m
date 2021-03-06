clear; close all; clc;
%% ==============================================================

train_data_1 = {'Urgent'	'Yes'	'Yes';
				'Urgent'	'No'	'Yes';
				'Near'		'Yes'	'Yes';
				'None'		'Yes'	'No';
				'None'		'No'	'Yes';
				'None'		'Yes'	'No';
				'Near'		'No'	'No';
				'Near'		'No'	'Yes';
				'Near'		'Yes'	'Yes';
				'Urgent'	'No'	'Yes'};
train_label_1 = {'Party'
				'Study';
				'Party';
				'Party';
				'Pub';
				'Party';
				'Study';
				'TV';
				'Party';
				'Study'};
predict_data_1 = {'Near', 'No', 'Yes'};

%% ==============================================================

train_data_2 = {'Drew',
				'Claudia',
				'Drew',
				'Drew',
				'Alberto',
				'Karin', 
				'Nina',
				'Sergio'};
train_label_2 = {'Male',
				'Female',
				'Female',
				'Female',
				'Male',
				'Female',
				'Female',
				'Male'};
predict_data_2 = {'Drew'};

%% ==============================================================

train_data_3 = {'Drew', 	'No', 	'Blue', 	'Short';
				'Claudia', 	'Yes', 	'Brown', 	'Long';
				'Drew', 	'No', 	'Blue', 	'Long';
				'Drew', 	'No', 	'Blue', 	'Long';
				'Alberto', 	'Yes', 	'Blue', 	'Short';
				'Karin', 	'No', 	'Blue', 	'Long';
				'Nina', 	'Yes', 	'Brown', 	'Short';
				'Sergio', 	'Yes', 	'Blue', 	'Long'};
train_label_3 = {'Male',
				'Female',
				'Female',
				'Female',
				'Male',
				'Female',
				'Female',
				'Male'};
predict_data_3 = {'Alberto', 'Yes', 'Brown', 'Short'};

%% ==============================================================
model = NaiveBayes_Train(train_data_3, train_label_3);
[predict_label, posterior] = NaiveBayes_Predict(model, predict_data_3)
