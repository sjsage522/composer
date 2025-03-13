// Add timestamp to prevent browser caching
window.onload = function() {
  const links = document.querySelectorAll('a');
  links.forEach(link => {
    if (link.href.includes('.html') && !link.href.includes('?t=')) {
      link.href = link.href + '?t='+'';
    }
  });
};
