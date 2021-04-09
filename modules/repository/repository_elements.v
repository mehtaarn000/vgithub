module repository

import requests
import json

pub fn list_repo_contributors(auth_key string, full_name string) []Contributer {
	response := requests.get(auth_key, base_url + "repos/" + full_name + "/contributors")

	contributors := json.decode([]Contributer, response) or { panic(err) }
	return contributors
}