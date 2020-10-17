CREATE DEFINER = CURRENT_USER TRIGGER `heroku_66cc27d27a69490`.`website_roles_AFTER_INSERT` AFTER INSERT ON `website_roles` FOR EACH ROW
BEGIN
  IF NEW.role = 'admin' OR NEW.role = 'owner' THEN
	INSERT INTO website_priviledges VALUES(null, 'create', NEW.website_id, NEW.developer_id);
    INSERT INTO website_priviledges VALUES(null, 'read', NEW.website_id, NEW.developer_id);
    INSERT INTO website_priviledges VALUES(null, 'update', NEW.website_id, NEW.developer_id);
    INSERT INTO website_priviledges VALUES(null, 'delete', NEW.website_id, NEW.developer_id);
  END IF;
  IF NEW.role = 'admin' OR NEW.role = 'reviewer' THEN
	INSERT INTO website_priviledges VALUES(null, 'read', NEW.website_id, NEW.developer_id);
  END IF;
  IF NEW.role = 'admin' OR NEW.role = 'writer' THEN
	INSERT INTO website_priviledges VALUES(null, 'create', NEW.website_id, NEW.developer_id);
    INSERT INTO website_priviledges VALUES(null, 'read', NEW.website_id, NEW.developer_id);
    INSERT INTO website_priviledges VALUES(null, 'update', NEW.website_id, NEW.developer_id);
  END IF;
  IF NEW.role = 'admin' OR NEW.role = 'editor' THEN
	INSERT INTO website_priviledges VALUES(null, 'read', NEW.website_id, NEW.developer_id);
    INSERT INTO website_priviledges VALUES(null, 'update', NEW.website_id, NEW.developer_id);
  END IF;
END

CREATE DEFINER = CURRENT_USER TRIGGER `heroku_66cc27d27a69490`.`website_roles_AFTER_INSERT` AFTER INSERT ON `page_roles` FOR EACH ROW
BEGIN
  IF NEW.role = 'admin' OR NEW.role = 'owner' THEN
	INSERT INTO page_priviledges VALUES(null, 'create', NEW.page_id, NEW.developer_id);
    INSERT INTO page_priviledges VALUES(null, 'read', NEW.page_id, NEW.developer_id);
    INSERT INTO page_priviledges VALUES(null, 'update', NEW.page_id, NEW.developer_id);
    INSERT INTO page_priviledges VALUES(null, 'delete', NEW.page_id, NEW.developer_id);
  END IF;
  IF NEW.role = 'admin' OR NEW.role = 'reviewer' THEN
	INSERT INTO page_priviledges VALUES(null, 'read', NEW.page_id, NEW.developer_id);
  END IF;
  IF NEW.role = 'admin' OR NEW.role = 'writer' THEN
	INSERT INTO page_priviledges VALUES(null, 'create', NEW.page_id, NEW.developer_id);
    INSERT INTO page_priviledges VALUES(null, 'read', NEW.page_id, NEW.developer_id);
    INSERT INTO page_priviledges VALUES(null, 'update', NEW.page_id, NEW.developer_id);
  END IF;
  IF NEW.role = 'admin' OR NEW.role = 'editor' THEN
	INSERT INTO page_priviledges VALUES(null, 'read', NEW.page_id, NEW.developer_id);
    INSERT INTO page_priviledges VALUES(null, 'update', NEW.page_id, NEW.developer_id);
  END IF;
END