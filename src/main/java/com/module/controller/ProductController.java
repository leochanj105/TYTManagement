package com.module.controller;

import com.module.model.ProductEntity;
import com.module.model.UserEntity;
import com.module.repository.ProductRepository;
import com.module.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    UserRepository userRepository;

    @RequestMapping(value = "/admin/products", method = RequestMethod.GET)
    public String showProducts(ModelMap modelMap) {
        List<ProductEntity> productList = productRepository.findAll();
        modelMap.addAttribute("productList", productList);
        return "admin/products";
    }


    @RequestMapping(value = "/admin/products/add", method = RequestMethod.GET)
    public String addProduct(ModelMap modelMap) {
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("userList", userList);
        return "admin/addProduct";
    }

    @RequestMapping(value = "/admin/products/addP", method = RequestMethod.GET)
    public String addProduct(@ModelAttribute("product") ProductEntity productEntity) {
//        System.out.println(blogEntity.getTitle());
//        System.out.println(blogEntity.getUserByUserId().getNickname());
        productRepository.saveAndFlush(productEntity);
        return "redirect:/admin/products";
    }

    @RequestMapping("/admin/products/show/{id}")
    public String showProduct(@PathVariable("id") int id, ModelMap modelMap) {
        ProductEntity product = productRepository.getOne(id);
        modelMap.addAttribute("product", product);
        return "admin/productDetail";
    }

    @RequestMapping("/admin/products/update/{id}")
    public String updateBlog(@PathVariable("id") int id, ModelMap modelMap) {
        ProductEntity product = productRepository.getOne(id);
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("product", product);
        modelMap.addAttribute("userList", userList);
        return "admin/updateProduct";
    }

    @RequestMapping(value = "/admin/products/updateP", method = RequestMethod.POST)
    public String updateProductP(@ModelAttribute("productP") ProductEntity productEntity) {
        productRepository.updateProduct(productEntity.getName(), productEntity.getUserByUserId().getId(),
                productEntity.getDescription(), productEntity.getProduceDate(), productEntity.getId(), productEntity.getPic());
        productRepository.flush();
        return "redirect:/admin/products";
    }
    @RequestMapping("/admin/products/delete/{id}")
    public String deleteProduct(@PathVariable("id") int id) {
        productRepository.deleteById(id);
        productRepository.flush();
        return "redirect:/admin/products";
    }

    @RequestMapping(value = "/wx/products/show/{id}", method = RequestMethod.GET)
    public @ResponseBody ProductEntity getWxPic(@PathVariable("id") int id){
        ProductEntity product = productRepository.getOne(id);
       // return "{'name':'" + product.getName() + "','description':'" + product.getDescription() + "'}";
        return product;
    }
}
