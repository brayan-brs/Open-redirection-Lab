@Controller
public class LoginController {

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    @PostMapping("/login")
    public String checkLogin(@ModelAttribute("user") User user, Model model) {
        if (user.getUsername().equals("Usuario") && user.getPassword().equals("senha")) {
            return "redirect:/home";
        } else {
            model.addAttribute("error", "Nome de usuário ou senha incorretos");
            return "login-error";
        }
    }
}
