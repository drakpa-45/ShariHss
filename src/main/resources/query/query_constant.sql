DaoPublic.getNewsDeatils=SELECT s.Id uuid,s.Title title,s.Content content,s.ContentMore contentMore,s.Author author,DATE_FORMAT(s.PublishedOn,'%d-%M-%Y') publishedOn FROM shsnewsdetails s
