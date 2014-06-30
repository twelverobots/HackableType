DROP TABLE IF EXISTS users;
CREATE TABLE `hackableType`.`users` (`userid` INT NOT NULL AUTO_INCREMENT, `username` VARCHAR(50) NOT NULL, `password` VARCHAR(255) NOT NULL, `first_name` VARCHAR(50) NOT NULL, `last_name` VARCHAR(50) NOT NULL,PRIMARY KEY (`userid`));
INSERT INTO `hackableType`.`users` (userid, username, password, first_name, last_name) VALUES (1, 'jdean', 'fcgh5', 'Jason', 'Dean');
INSERT INTO `hackableType`.`users` (userid, username, password, first_name, last_name) VALUES (2, 'pfreitag', 'cgeht', 'Pete', 'Freitag');
INSERT INTO `hackableType`.`users` (userid, username, password, first_name, last_name) VALUES (3, 'bforta', 'cdgwrh', 'Ben', 'Forta');
DROP TABLE IF EXISTS news;
CREATE TABLE `hackableType`.`news` (`newsid` INT NOT NULL AUTO_INCREMENT,`title` varchar(255) NOT NULL,`byline` varchar(255) NOT NULL,`pubdate` date NOT NULL,`bodytext` LONGTEXT NOT NULL, PRIMARY KEY (`newsid`));
INSERT INTO `hackableType`.`news` (newsid, title, byline, pubdate, bodytext) VALUES (1, 'jQuery Brings World Peace', 'Ben Nadel', '2008-01-20', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tellus odio, fringilla nec tempor sit amet, blandit sit amet lectus. Nullam pharetra convallis eros, vel tincidunt lacus commodo non. Duis vehicula nulla sit amet urna placerat placerat. Suspendisse commodo augue eget nulla ultrices quis consectetur erat dapibus. Fusce tristique, eros nec laoreet vehicula, libero mi aliquam nibh, eget ultricies ipsum libero eget leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. Nam lacinia bibendum mauris sit amet blandit. In ornare lobortis libero ut facilisis. Nullam volutpat sollicitudin mi, a tristique sem feugiat eget. In enim arcu, consequat a hendrerit vitae, bibendum a velit. Aenean pellentesque leo id urna pellentesque ac imperdiet odio volutpat. Sed sed ipsum congue neque ultricies adipiscing id a tortor. Nunc sed lectus quis enim convallis ultrices a a leo. Nullam venenatis, leo tempus mattis fringilla, velit odio placerat tortor, in mollis ipsum ligula eget est. Aliquam lacinia diam quis leo condimentum ac pulvinar turpis pellentesque. Proin non eros sed est lacinia elementum. Etiam nisl magna, pharetra imperdiet blandit eu, dignissim nec tortor. Pellentesque rutrum lobortis ipsum quis facilisis.</p><p>Ut pellentesque, arcu tristique commodo ullamcorper, turpis orci blandit odio, non dignissim tellus nulla eget orci. Quisque varius, nulla sed commodo laoreet, elit ligula gravida mauris, eget dignissim magna justo in mauris. Proin elementum sollicitudin auctor. Nullam commodo molestie risus ut condimentum. Sed massa lectus, consectetur ut fringilla vitae, fermentum tincidunt justo. Cras sapien lorem, ornare sed porttitor eu, vehicula vitae dolor. Aliquam ultrices varius vulputate. Nullam eu orci eget tellus porttitor semper et nec lacus. Praesent auctor metus eu nulla bibendum non consequat urna sagittis. Vivamus porttitor ligula a ante fermentum sollicitudin. Mauris sagittis eleifend imperdiet. Duis pellentesque mollis tincidunt. Cras eget diam in arcu ultrices interdum vel sit amet orci. Proin magna sem, faucibus nec fringilla vel, consectetur egestas risus. Suspendisse feugiat quam feugiat ligula iaculis in ornare augue viverra. Mauris sed mi a eros sodales accumsan. Aliquam purus dolor, auctor ac adipiscing id, varius id justo. Vivamus eget est massa.</p><p>Quisque non erat diam, eu pellentesque magna. Phasellus vestibulum blandit justo. Cras quis sem arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec eget lacus elementum leo pretium mollis in in urna. Maecenas sed augue et lorem tempus pretium. Duis euismod tellus sit amet enim mollis pharetra. Donec malesuada ornare turpis, sed luctus augue faucibus quis. Vivamus neque est, facilisis at consectetur ac, commodo vel orci. Quisque a vestibulum turpis. Proin posuere feugiat lectus ac consectetur. Quisque magna nisi, porttitor quis congue et, pretium eu dui. Proin ultrices ligula ligula, vitae sagittis tortor. Sed eu lectus nulla, sit amet mattis sem. Mauris placerat mattis accumsan. Suspendisse potenti. Sed enim mauris, pharetra sed mattis sit amet, ultrices nec tortor.</p>');
INSERT INTO `hackableType`.`news` (newsid, title, byline, pubdate, bodytext) VALUES (2, 'United Nations Adopts ColdFusion as an International Web Development Standard', 'Adam Lehman', '2010-02-09', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tellus odio, fringilla nec tempor sit amet, blandit sit amet lectus. Nullam pharetra convallis eros, vel tincidunt lacus commodo non. Duis vehicula nulla sit amet urna placerat placerat. Suspendisse commodo augue eget nulla ultrices quis consectetur erat dapibus. Fusce tristique, eros nec laoreet vehicula, libero mi aliquam nibh, eget ultricies ipsum libero eget leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. Nam lacinia bibendum mauris sit amet blandit. In ornare lobortis libero ut facilisis. Nullam volutpat sollicitudin mi, a tristique sem feugiat eget. In enim arcu, consequat a hendrerit vitae, bibendum a velit. Aenean pellentesque leo id urna pellentesque ac imperdiet odio volutpat. Sed sed ipsum congue neque ultricies adipiscing id a tortor. Nunc sed lectus quis enim convallis ultrices a a leo. Nullam venenatis, leo tempus mattis fringilla, velit odio placerat tortor, in mollis ipsum ligula eget est. Aliquam lacinia diam quis leo condimentum ac pulvinar turpis pellentesque. Proin non eros sed est lacinia elementum. Etiam nisl magna, pharetra imperdiet blandit eu, dignissim nec tortor. Pellentesque rutrum lobortis ipsum quis facilisis.</p><p>Ut pellentesque, arcu tristique commodo ullamcorper, turpis orci blandit odio, non dignissim tellus nulla eget orci. Quisque varius, nulla sed commodo laoreet, elit ligula gravida mauris, eget dignissim magna justo in mauris. Proin elementum sollicitudin auctor. Nullam commodo molestie risus ut condimentum. Sed massa lectus, consectetur ut fringilla vitae, fermentum tincidunt justo. Cras sapien lorem, ornare sed porttitor eu, vehicula vitae dolor. Aliquam ultrices varius vulputate. Nullam eu orci eget tellus porttitor semper et nec lacus. Praesent auctor metus eu nulla bibendum non consequat urna sagittis. Vivamus porttitor ligula a ante fermentum sollicitudin. Mauris sagittis eleifend imperdiet. Duis pellentesque mollis tincidunt. Cras eget diam in arcu ultrices interdum vel sit amet orci. Proin magna sem, faucibus nec fringilla vel, consectetur egestas risus. Suspendisse feugiat quam feugiat ligula iaculis in ornare augue viverra. Mauris sed mi a eros sodales accumsan. Aliquam purus dolor, auctor ac adipiscing id, varius id justo. Vivamus eget est massa.</p><p>Quisque non erat diam, eu pellentesque magna. Phasellus vestibulum blandit justo. Cras quis sem arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec eget lacus elementum leo pretium mollis in in urna. Maecenas sed augue et lorem tempus pretium. Duis euismod tellus sit amet enim mollis pharetra. Donec malesuada ornare turpis, sed luctus augue faucibus quis. Vivamus neque est, facilisis at consectetur ac, commodo vel orci. Quisque a vestibulum turpis. Proin posuere feugiat lectus ac consectetur. Quisque magna nisi, porttitor quis congue et, pretium eu dui. Proin ultrices ligula ligula, vitae sagittis tortor. Sed eu lectus nulla, sit amet mattis sem. Mauris placerat mattis accumsan. Suspendisse potenti. Sed enim mauris, pharetra sed mattis sit amet, ultrices nec tortor.</p>');
INSERT INTO `hackableType`.`news` (newsid, title, byline, pubdate, bodytext) VALUES (3, 'Designers are even flakier than we thought', 'Andy Matthews', '2009-03-09', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tellus odio, fringilla nec tempor sit amet, blandit sit amet lectus. Nullam pharetra convallis eros, vel tincidunt lacus commodo non. Duis vehicula nulla sit amet urna placerat placerat. Suspendisse commodo augue eget nulla ultrices quis consectetur erat dapibus. Fusce tristique, eros nec laoreet vehicula, libero mi aliquam nibh, eget ultricies ipsum libero eget leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. Nam lacinia bibendum mauris sit amet blandit. In ornare lobortis libero ut facilisis. Nullam volutpat sollicitudin mi, a tristique sem feugiat eget. In enim arcu, consequat a hendrerit vitae, bibendum a velit. Aenean pellentesque leo id urna pellentesque ac imperdiet odio volutpat. Sed sed ipsum congue neque ultricies adipiscing id a tortor. Nunc sed lectus quis enim convallis ultrices a a leo. Nullam venenatis, leo tempus mattis fringilla, velit odio placerat tortor, in mollis ipsum ligula eget est. Aliquam lacinia diam quis leo condimentum ac pulvinar turpis pellentesque. Proin non eros sed est lacinia elementum. Etiam nisl magna, pharetra imperdiet blandit eu, dignissim nec tortor. Pellentesque rutrum lobortis ipsum quis facilisis.</p><p>Ut pellentesque, arcu tristique commodo ullamcorper, turpis orci blandit odio, non dignissim tellus nulla eget orci. Quisque varius, nulla sed commodo laoreet, elit ligula gravida mauris, eget dignissim magna justo in mauris. Proin elementum sollicitudin auctor. Nullam commodo molestie risus ut condimentum. Sed massa lectus, consectetur ut fringilla vitae, fermentum tincidunt justo. Cras sapien lorem, ornare sed porttitor eu, vehicula vitae dolor. Aliquam ultrices varius vulputate. Nullam eu orci eget tellus porttitor semper et nec lacus. Praesent auctor metus eu nulla bibendum non consequat urna sagittis. Vivamus porttitor ligula a ante fermentum sollicitudin. Mauris sagittis eleifend imperdiet. Duis pellentesque mollis tincidunt. Cras eget diam in arcu ultrices interdum vel sit amet orci. Proin magna sem, faucibus nec fringilla vel, consectetur egestas risus. Suspendisse feugiat quam feugiat ligula iaculis in ornare augue viverra. Mauris sed mi a eros sodales accumsan. Aliquam purus dolor, auctor ac adipiscing id, varius id justo. Vivamus eget est massa.</p><p>Quisque non erat diam, eu pellentesque magna. Phasellus vestibulum blandit justo. Cras quis sem arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec eget lacus elementum leo pretium mollis in in urna. Maecenas sed augue et lorem tempus pretium. Duis euismod tellus sit amet enim mollis pharetra. Donec malesuada ornare turpis, sed luctus augue faucibus quis. Vivamus neque est, facilisis at consectetur ac, commodo vel orci. Quisque a vestibulum turpis. Proin posuere feugiat lectus ac consectetur. Quisque magna nisi, porttitor quis congue et, pretium eu dui. Proin ultrices ligula ligula, vitae sagittis tortor. Sed eu lectus nulla, sit amet mattis sem. Mauris placerat mattis accumsan. Suspendisse potenti. Sed enim mauris, pharetra sed mattis sit amet, ultrices nec tortor.</p>');
INSERT INTO `hackableType`.`news` (newsid, title, byline, pubdate, bodytext) VALUES (4, 'SECURITY!! Because I said so', 'Jason Dean', '2009-07-07', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tellus odio, fringilla nec tempor sit amet, blandit sit amet lectus. Nullam pharetra convallis eros, vel tincidunt lacus commodo non. Duis vehicula nulla sit amet urna placerat placerat. Suspendisse commodo augue eget nulla ultrices quis consectetur erat dapibus. Fusce tristique, eros nec laoreet vehicula, libero mi aliquam nibh, eget ultricies ipsum libero eget leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. Nam lacinia bibendum mauris sit amet blandit. In ornare lobortis libero ut facilisis. Nullam volutpat sollicitudin mi, a tristique sem feugiat eget. In enim arcu, consequat a hendrerit vitae, bibendum a velit. Aenean pellentesque leo id urna pellentesque ac imperdiet odio volutpat. Sed sed ipsum congue neque ultricies adipiscing id a tortor. Nunc sed lectus quis enim convallis ultrices a a leo. Nullam venenatis, leo tempus mattis fringilla, velit odio placerat tortor, in mollis ipsum ligula eget est. Aliquam lacinia diam quis leo condimentum ac pulvinar turpis pellentesque. Proin non eros sed est lacinia elementum. Etiam nisl magna, pharetra imperdiet blandit eu, dignissim nec tortor. Pellentesque rutrum lobortis ipsum quis facilisis.</p><p>Ut pellentesque, arcu tristique commodo ullamcorper, turpis orci blandit odio, non dignissim tellus nulla eget orci. Quisque varius, nulla sed commodo laoreet, elit ligula gravida mauris, eget dignissim magna justo in mauris. Proin elementum sollicitudin auctor. Nullam commodo molestie risus ut condimentum. Sed massa lectus, consectetur ut fringilla vitae, fermentum tincidunt justo. Cras sapien lorem, ornare sed porttitor eu, vehicula vitae dolor. Aliquam ultrices varius vulputate. Nullam eu orci eget tellus porttitor semper et nec lacus. Praesent auctor metus eu nulla bibendum non consequat urna sagittis. Vivamus porttitor ligula a ante fermentum sollicitudin. Mauris sagittis eleifend imperdiet. Duis pellentesque mollis tincidunt. Cras eget diam in arcu ultrices interdum vel sit amet orci. Proin magna sem, faucibus nec fringilla vel, consectetur egestas risus. Suspendisse feugiat quam feugiat ligula iaculis in ornare augue viverra. Mauris sed mi a eros sodales accumsan. Aliquam purus dolor, auctor ac adipiscing id, varius id justo. Vivamus eget est massa.</p><p>Quisque non erat diam, eu pellentesque magna. Phasellus vestibulum blandit justo. Cras quis sem arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec eget lacus elementum leo pretium mollis in in urna. Maecenas sed augue et lorem tempus pretium. Duis euismod tellus sit amet enim mollis pharetra. Donec malesuada ornare turpis, sed luctus augue faucibus quis. Vivamus neque est, facilisis at consectetur ac, commodo vel orci. Quisque a vestibulum turpis. Proin posuere feugiat lectus ac consectetur. Quisque magna nisi, porttitor quis congue et, pretium eu dui. Proin ultrices ligula ligula, vitae sagittis tortor. Sed eu lectus nulla, sit amet mattis sem. Mauris placerat mattis accumsan. Suspendisse potenti. Sed enim mauris, pharetra sed mattis sit amet, ultrices nec tortor.</p>');
INSERT INTO `hackableType`.`news` (newsid, title, byline, pubdate, bodytext) VALUES (5, 'Hacking your CF, cause I can', 'Peter Freitag', '2010-01-01', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tellus odio, fringilla nec tempor sit amet, blandit sit amet lectus. Nullam pharetra convallis eros, vel tincidunt lacus commodo non. Duis vehicula nulla sit amet urna placerat placerat. Suspendisse commodo augue eget nulla ultrices quis consectetur erat dapibus. Fusce tristique, eros nec laoreet vehicula, libero mi aliquam nibh, eget ultricies ipsum libero eget leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. Nam lacinia bibendum mauris sit amet blandit. In ornare lobortis libero ut facilisis. Nullam volutpat sollicitudin mi, a tristique sem feugiat eget. In enim arcu, consequat a hendrerit vitae, bibendum a velit. Aenean pellentesque leo id urna pellentesque ac imperdiet odio volutpat. Sed sed ipsum congue neque ultricies adipiscing id a tortor. Nunc sed lectus quis enim convallis ultrices a a leo. Nullam venenatis, leo tempus mattis fringilla, velit odio placerat tortor, in mollis ipsum ligula eget est. Aliquam lacinia diam quis leo condimentum ac pulvinar turpis pellentesque. Proin non eros sed est lacinia elementum. Etiam nisl magna, pharetra imperdiet blandit eu, dignissim nec tortor. Pellentesque rutrum lobortis ipsum quis facilisis.</p><p>Ut pellentesque, arcu tristique commodo ullamcorper, turpis orci blandit odio, non dignissim tellus nulla eget orci. Quisque varius, nulla sed commodo laoreet, elit ligula gravida mauris, eget dignissim magna justo in mauris. Proin elementum sollicitudin auctor. Nullam commodo molestie risus ut condimentum. Sed massa lectus, consectetur ut fringilla vitae, fermentum tincidunt justo. Cras sapien lorem, ornare sed porttitor eu, vehicula vitae dolor. Aliquam ultrices varius vulputate. Nullam eu orci eget tellus porttitor semper et nec lacus. Praesent auctor metus eu nulla bibendum non consequat urna sagittis. Vivamus porttitor ligula a ante fermentum sollicitudin. Mauris sagittis eleifend imperdiet. Duis pellentesque mollis tincidunt. Cras eget diam in arcu ultrices interdum vel sit amet orci. Proin magna sem, faucibus nec fringilla vel, consectetur egestas risus. Suspendisse feugiat quam feugiat ligula iaculis in ornare augue viverra. Mauris sed mi a eros sodales accumsan. Aliquam purus dolor, auctor ac adipiscing id, varius id justo. Vivamus eget est massa.</p><p>Quisque non erat diam, eu pellentesque magna. Phasellus vestibulum blandit justo. Cras quis sem arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec eget lacus elementum leo pretium mollis in in urna. Maecenas sed augue et lorem tempus pretium. Duis euismod tellus sit amet enim mollis pharetra. Donec malesuada ornare turpis, sed luctus augue faucibus quis. Vivamus neque est, facilisis at consectetur ac, commodo vel orci. Quisque a vestibulum turpis. Proin posuere feugiat lectus ac consectetur. Quisque magna nisi, porttitor quis congue et, pretium eu dui. Proin ultrices ligula ligula, vitae sagittis tortor. Sed eu lectus nulla, sit amet mattis sem. Mauris placerat mattis accumsan. Suspendisse potenti. Sed enim mauris, pharetra sed mattis sit amet, ultrices nec tortor.</p>');
