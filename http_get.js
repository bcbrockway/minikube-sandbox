import http from "k6/http";

const baseURL = "http://minikube";

let delay = "0.6"

function get(func, data) {
  http.get(baseURL + "/" + func + "/" + data);
};

export default function() {
  get("status", "403");
//  get("status", "403");
//  get("delay", delay);
}
