SELECT geo_state.name, user_profile.gender, user_profile.dob
FROM geo_state
INNER JOIN geo_address ON geo_address.state_id = geo_state.id 
INNER JOIN usergeo_useraddress ON usergeo_useraddress.address_id = geo_address.id
INNER JOIN user_profile ON user_profile.id = usergeo_useraddress.user_id
WHERE user_profile.dob IS NOT NULL
AND (user_profile.gender='F' OR user_profile.gender='M')
ORDER BY geo_state.name;
